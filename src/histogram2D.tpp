template <class BinType, class DataType>
Histogram2D<BinType, DataType, typename std::enable_if<std::is_floating_point<DataType>::value>::type>::Histogram2D(
    uint nofbins, int n_threads, DataType max, uint n_prod)
    // DataType Constructor ///////
    : n_prod(std::max(n_prod, (uint)1)), nofbins(std::max(nofbins, (uint)4)), n_threads(std::max(n_threads, 1)),
      histogram(Multi_array<BinType, 3>(n_prod, nofbins, nofbins)),
      hs(Multi_array<uint8_t, 4>(n_prod, n_threads, nofbins, nofbins)),
      max(std::max(max, std::numeric_limits<DataType>::epsilon() * 4)), bin_width(2.0 * max / nofbins) {
    omp_set_num_threads(n_threads);
    reset();
    reset_threads();
}

template <class BinType, class DataType>
Histogram2D<BinType, DataType, typename std::enable_if<std::is_integral<DataType>::value>::type>::Histogram2D(
    int n_threads, uint n_prod)
    // IntergerType Constructor ///////
    : n_prod(std::max(n_prod, (uint)1)), nofbins(1 << (8 * sizeof(DataType))), n_threads(std::max(n_threads, 1)),
      histogram(Multi_array<BinType, 3>(n_prod, 1 << (8 * sizeof(DataType)), 1 << (8 * sizeof(DataType)))),
      hs(Multi_array<uint8_t, 4>(n_prod, n_threads, 1 << (8 * sizeof(DataType)), 1 << (8 * sizeof(DataType)))), bit(8) {
    omp_set_num_threads(n_threads);
    reset();
    reset_threads();
}

template <class BinType, class DataType>
Histogram2D<BinType, DataType, typename std::enable_if<std::is_integral<DataType>::value>::type>::Histogram2D(
    int n_threads, uint bit, uint n_prod)
    // IntergerType Constructor ///////
    : n_prod(std::max(n_prod, (uint)1)), nofbins(1 << bit), n_threads(std::max(n_threads, 1)),
      histogram(Multi_array<BinType, 3>(n_prod, 1 << bit, 1 << bit)),
      hs(Multi_array<uint8_t, 4>(n_prod, n_threads, 1 << bit, 1 << bit)), bit(bit) {
    omp_set_num_threads(n_threads);
    reset();
    reset_threads();
}

///////////////////////
///// METHODS  FLOATING POINTS

template <class BinType, class DataType>
inline void
Histogram2D<BinType, DataType, typename std::enable_if<std::is_floating_point<DataType>::value>::type>::compute_bins(
    DataType data_2, DataType data_1, uint &biny, uint &binx) {
    /*
            Two simplifications where made :
                    - A conditionnal was removed by stacking all clipping in the
       first bin
                            - This indice a very sligh error due to <= instead of
       < for the negative cliping
    */
    binx = std::abs(data_1) >= max ? 0 : (unsigned int)((data_1 + max) / (bin_width));
    biny = std::abs(data_2) >= max ? 0 : (unsigned int)((data_2 + max) / (bin_width));
}

template <class BinType, class DataType>
inline void
Histogram2D<BinType, DataType, typename std::enable_if<std::is_floating_point<DataType>::value>::type>::to_hs(
    DataType data_y, DataType data_x, uint i_prod, int this_thread) {
    uint binx;
    uint biny;
    compute_bins(data_y, data_x, biny, binx);
    to_middleman(i_prod, this_thread, biny, binx);
}

template <class BinType, class DataType>
py::array_t<double>
Histogram2D<BinType, DataType, typename std::enable_if<std::is_floating_point<DataType>::value>::type>::abscisse_py(
    double max, uint nofbins) {
    // This is a static function
    // That's why we recompute bin_width
    double bin_width = 2.0 * max / (nofbins);
    Multi_array<double, 1> abscisse(nofbins);
    for (uint64_t i = 0; i < nofbins; i++) {
        abscisse[i] = ((i + 0.5) * bin_width) - max;
    }
    return abscisse.move_py();
}

template <class BinType, class DataType>
inline void
Histogram2D<BinType, DataType, typename std::enable_if<std::is_floating_point<DataType>::value>::type>::reduction() {
    reduction_and_reset_threads();
}

///// METHODS FLOATING POINTS END
///////////////////////

//////////////////////////////////////////////
// ACCUMULATE METHODS EXPLICIT INSTANTIATION
//////////////////////////////////////////////
#define _PRAGMA_(x) _Pragma(#x)
#define PRAGMA_GCC_UNROLL(x) _PRAGMA_(GCC unroll x)

// DOUBLE BEGIN /////////////////////////////////////
#define UNROLL 8
template <class BinType, class DataType>
template <class AccumulateType, typename std::enable_if<std::is_same<AccumulateType, double>::value, int>::type>
void Histogram2D<BinType, DataType, typename std::enable_if<std::is_floating_point<DataType>::value>::type>::accumulate(
    AccumulateType *data_1, AccumulateType *data_2, uint64_t L_data, uint i_prod) {
    _Pragma("omp parallel") {
        manage_thread_affinity();
        int this_thread = omp_get_thread_num();
        _Pragma("omp for") for (uint64_t i = 0; i < L_data - (L_data % UNROLL); i += UNROLL) {
            PRAGMA_GCC_UNROLL(UNROLL)
            for (uint64_t j = 0; j < UNROLL; j++) {
                to_hs(data_2[i + j], data_1[i + j], i_prod, this_thread);
            }
        }
        for (uint64_t i = L_data - (L_data % UNROLL); i < L_data; i++) {
            to_hs(data_2[i], data_1[i], i_prod, 0);
        }
    }
    reduction_and_reset_threads();
}
#undef UNROLL
#define UNROLL 8
template <class BinType, class DataType>
template <class AccumulateType, typename std::enable_if<std::is_same<AccumulateType, double>::value, int>::type>
void Histogram2D<BinType, DataType, typename std::enable_if<std::is_floating_point<DataType>::value>::type>::
accumulate(AccumulateType *data_1, AccumulateType *data_2,uint64_t L_data, uint i_prod,int this_thread) 
{ 
	// Thread safe version of accumulate
	for (uint64_t i = 0; i < L_data - (L_data % UNROLL); i += UNROLL) {
		PRAGMA_GCC_UNROLL(UNROLL)
		for (uint64_t j = 0; j < UNROLL; j++) {
			to_hs(data_2[i + j], data_1[i + j], i_prod, this_thread);
		}
	}
	for (uint64_t i = L_data - (L_data % UNROLL); i < L_data; i++) {
		to_hs(data_2[i], data_1[i], i_prod, 0);
	}
}
#undef UNROLL

// DOUBLE END //////////////////////////////////////
// FLOAT BEGIN /////////////////////////////////////
#define UNROLL 8
template <class BinType, class DataType>
template <class AccumulateType, typename std::enable_if<std::is_same<AccumulateType, float>::value, int>::type>
void Histogram2D<BinType, DataType, typename std::enable_if<std::is_floating_point<DataType>::value>::type>::accumulate(
    AccumulateType *data_1, AccumulateType *data_2, uint64_t L_data, uint i_prod) {
    _Pragma("omp parallel") {
        manage_thread_affinity();
        int this_thread = omp_get_thread_num();
        _Pragma("omp for") for (uint64_t i = 0; i < L_data - (L_data % UNROLL); i += UNROLL) {
            PRAGMA_GCC_UNROLL(UNROLL)
            for (uint64_t j = 0; j < UNROLL; j++) {
                to_hs(data_2[i + j], data_1[i + j], i_prod, this_thread);
            }
        }
        for (uint64_t i = L_data - (L_data % UNROLL); i < L_data; i++) {
            to_hs(data_2[i], data_1[i], i_prod, 0);
        }
    }
    reduction_and_reset_threads();
}
#undef UNROLL
#define UNROLL 8
template <class BinType, class DataType>
template <class AccumulateType, typename std::enable_if<std::is_same<AccumulateType, float>::value, int>::type>
void Histogram2D<BinType, DataType, typename std::enable_if<std::is_floating_point<DataType>::value>::type>::
accumulate(AccumulateType *data_1, AccumulateType *data_2,uint64_t L_data, uint i_prod,int this_thread) 
{ 
	// Thread safe version of accumulate
	for (uint64_t i = 0; i < L_data - (L_data % UNROLL); i += UNROLL) {
		PRAGMA_GCC_UNROLL(UNROLL)
		for (uint64_t j = 0; j < UNROLL; j++) {
			to_hs(data_2[i + j], data_1[i + j], i_prod, this_thread);
		}
	}
	for (uint64_t i = L_data - (L_data % UNROLL); i < L_data; i++) {
		to_hs(data_2[i], data_1[i], i_prod, 0);
	}
}
#undef UNROLL
// FLOAT END /////////////////////////////////////
// UINT8 BEGIN /////////////////////////////////////
#define UNROLL 8
template <class BinType, class DataType>
template <class AccumulateType, typename std::enable_if<std::is_same<AccumulateType, uint8_t>::value, int>::type>
void Histogram2D<BinType, DataType, typename std::enable_if<std::is_integral<DataType>::value>::type>::accumulate(
    AccumulateType *data_1, AccumulateType *data_2, uint64_t L_data, uint i_prod) {
    BinType *histogram_local = histogram(i_prod);
    _Pragma("omp parallel") {
        manage_thread_affinity();
        _Pragma("omp for reduction(+:histogram_local[:1<<16])") for (uint64_t i = 0; i < L_data - (L_data % UNROLL);
                                                                     i += UNROLL) {
            PRAGMA_GCC_UNROLL(UNROLL)
            for (uint64_t j = 0; j < UNROLL; j++) {
                histogram_local[nofbins * data_2[i + j] + data_1[i + j]]++;
            }
        }
        for (uint64_t i = L_data - (L_data % UNROLL); i < L_data; i++) {
            histogram(i_prod, data_2[i], data_1[i])++;
        }
    }
}
#undef UNROLL
// UINT8 END /////////////////////////////////////
// UINT16 BEGIN /////////////////////////////////////
#define UNROLL 4
template <class BinType, class DataType>
template <class AccumulateType, typename std::enable_if<std::is_same<AccumulateType, uint16_t>::value, int>::type>
void Histogram2D<BinType, DataType, typename std::enable_if<std::is_integral<DataType>::value>::type>::accumulate(
    AccumulateType *data_1, AccumulateType *data_2, uint64_t L_data, uint i_prod) {
    _Pragma("omp parallel") {
        manage_thread_affinity();
        int this_thread = omp_get_thread_num();
        _Pragma("omp for") for (uint64_t i = 0; i < L_data - (L_data % UNROLL); i += UNROLL) {
            PRAGMA_GCC_UNROLL(UNROLL)
            for (uint64_t j = 0; j < UNROLL; j++) {
                to_middleman(i_prod, this_thread, data_2[i + j], data_1[i + j]);
            }
        }
        for (uint64_t i = L_data - (L_data % UNROLL); i < L_data; i++) {
            histogram(i_prod, data_2[i], data_1[i])++;
        }
    }
    reduction_and_reset_threads();
}
#undef UNROLL
// template<>
// template<>
// void Histogram2D<BIN_TYPE,uint16_t>::accumulate( uint16_t* data_1, uint16_t*
// data_2,  uint64_t L_data )
// {
// int b = bit;
// int tail = 16-b;
// _Pragma("omp parallel")
// {
// manage_thread_affinity();
// int this_thread = omp_get_thread_num();
// _Pragma("omp for")
// for (uint64_t i=0; i<L_data-(L_data%UNROLL); i+=UNROLL)
// {
// PRAGMA_GCC_UNROLL(UNROLL)
// for (uint64_t j=0; j<UNROLL; j++)
// {
// to_middleman( this_thread , data_2[i+j]>>tail  , data_1[i+j]>>tail );
// }
// }
// for (uint64_t i=L_data-(L_data%UNROLL); i<L_data; i++)
// {
// histogram(data_2[i],data_1[i])++;
// }
// }
// reduction_and_reset_threads();
// }

// UINT16 END /////////////////////////////////////
// INT8 BEGIN /////////////////////////////////////
#define UNROLL 8
template <class BinType, class DataType>
template <class AccumulateType, typename std::enable_if<std::is_same<AccumulateType, int8_t>::value, int>::type>
void Histogram2D<BinType, DataType, typename std::enable_if<std::is_integral<DataType>::value>::type>::accumulate(
    AccumulateType *data_1, AccumulateType *data_2, uint64_t L_data, uint i_prod) {
    int min_val = 1 << (8 - 1);
    BinType *histogram_local = histogram(i_prod);
    _Pragma("omp parallel") {
        manage_thread_affinity();
        _Pragma("omp for reduction(+:histogram_local[:1<<16])") for (uint64_t i = 0; i < L_data - (L_data % UNROLL);
                                                                     i += UNROLL) {
            PRAGMA_GCC_UNROLL(UNROLL)
            for (uint64_t j = 0; j < UNROLL; j++) {
                histogram_local[nofbins * data_2[i + j] + min_val + data_1[i + j] + min_val]++;
            }
        }
        for (uint64_t i = L_data - (L_data % UNROLL); i < L_data; i++) {
            histogram(i_prod, data_2[i] + min_val, data_1[i] + min_val)++;
        }
    }
    reduction_and_reset_threads();
}
#undef UNROLL
// INT8 END /////////////////////////////////////
// INT16 BEGIN /////////////////////////////////////
#define UNROLL 4
template <class BinType, class DataType>
template <class AccumulateType, typename std::enable_if<std::is_same<AccumulateType, int16_t>::value, int>::type>
void Histogram2D<BinType, DataType, typename std::enable_if<std::is_integral<DataType>::value>::type>::accumulate(
    AccumulateType *data_1, AccumulateType *data_2, uint64_t L_data, uint i_prod) {
    int min_val = 1 << (bit - 1);
    _Pragma("omp parallel") {
        manage_thread_affinity();
        int this_thread = omp_get_thread_num();
        _Pragma("omp for") for (uint64_t i = 0; i < L_data - (L_data % UNROLL); i += UNROLL) {
            PRAGMA_GCC_UNROLL(UNROLL)
            for (uint64_t j = 0; j < UNROLL; j++) {
                to_middleman(i_prod, this_thread, (int)(data_2[i + j]) + min_val, (int)(data_1[i + j]) + min_val);
            }
        }
        for (uint64_t i = L_data - (L_data % UNROLL); i < L_data; i++) {
            histogram(i_prod, (int)(data_2[i]) + min_val, (int)(data_1[i]) + min_val)++;
        }
    }
    reduction_and_reset_threads();
}
#undef UNROLL
// INT16 END /////////////////////////////////////
// ACCUMULATE END ////////////////////////////////
#undef _PRAGMA_
#undef PRAGMA_GCC_UNROLL

// template<class BinType,class DataType>
// template<class UnsignedType,class Enable>
// void Histogram2D<BinType,DataType>::swap()
// {
// const uint halfsize = 1<<(bit-1);
// Multi_array<BinType,2> tmp (halfsize,halfsize);
// for (uint j=0; j<halfsize; j++)
// {
// for (uint i=0; i<halfsize; i++)
// {
// tmp(j,i) = histogram(j,i);
// histogram(j,i) = histogram(j+halfsize,i+halfsize);
// histogram(j+halfsize,i+halfsize) = tmp(j,i) ;
// }
// }
// for (uint j=0; j<halfsize; j++)
// {
// for (uint i=0; i<halfsize; i++)
// {
// tmp(j,i) = histogram(j,i+halfsize);
// histogram(j,i+halfsize) = histogram(j+halfsize,i);
// histogram(j+halfsize,i) = tmp(j,i) ;
// }
// }
// }

///////////////////////
///// METHODS BOTH FLOATING POINTS AND INTEGERS HAVE

// FLOAT PART////////////////////

template <class BinType, class DataType>
inline void
Histogram2D<BinType, DataType, typename std::enable_if<std::is_floating_point<DataType>::value>::type>::to_middleman(
    uint i_prod, int this_thread, uint biny, uint binx) {
    if (hs(i_prod, this_thread, biny, binx) == 255) {
        _Pragma("omp atomic update") histogram(i_prod, biny, binx) += (1 << 8);
    }
    hs(i_prod, this_thread, biny, binx)++;
}

template <class BinType, class DataType>
inline void
Histogram2D<BinType, DataType,
            typename std::enable_if<std::is_floating_point<DataType>::value>::type>::reduction_and_reset_threads() {
    for (int thread = 0; thread < n_threads; thread++) {
#pragma omp parallel
        {
            manage_thread_affinity();
#pragma omp for collapse(3)
            for (uint k = 0; k < n_prod; k++) {
                for (uint j = 0; j < nofbins; j++) {
                    for (uint i = 0; i < nofbins; i++) {
                        histogram(k, j, i) += hs(k, thread, j, i);
                        hs(k, thread, j, i) = 0;
                    }
                }
            }
        }
    }
}

template <class BinType, class DataType>
void Histogram2D<BinType, DataType, typename std::enable_if<std::is_floating_point<DataType>::value>::type>::reset() {
    for (uint k = 0; k < n_prod; k++) {
        for (uint j = 0; j < nofbins; j++) {
            for (uint i = 0; i < nofbins; i++) {
                histogram(k, j, i) = 0;
            }
        }
    }
}

template <class BinType, class DataType>
void Histogram2D<BinType, DataType,
                 typename std::enable_if<std::is_floating_point<DataType>::value>::type>::reset_threads() {
    for (uint l = 0; l < n_prod; l++) {
        for (int k = 0; k < n_threads; k++) {
            for (uint j = 0; j < nofbins; j++) {
                for (uint i = 0; i < nofbins; i++) {
                    hs(l, k, j, i) = 0;
                }
            }
        }
    }
}

template <class BinType, class DataType>
uint64_t Histogram2D<BinType, DataType,
                     typename std::enable_if<std::is_floating_point<DataType>::value>::type>::how_much_clip() {
    uint64_t clip = 0;
    uint n_i = histogram.get_n_i();
    uint n_j = histogram.get_n_j();
    for (uint k = 0; k < n_prod; k++) {
        for (uint i = 0; i < n_i; i++) {
            clip += histogram(k, 0, i);
            clip += histogram(k, n_j - 1, i);
        }
        for (uint j = 1; j < n_j - 1; j++) {
            clip += histogram(k, j, 0);
            clip += histogram(k, j, n_i - 1);
        }
    }
    return clip;
}

template <class BinType, class DataType>
void Histogram2D<BinType, DataType, typename std::enable_if<std::is_floating_point<DataType>::value>::type>::
    accumulate_py(py::array_t<DataType> data_1, py::array_t<DataType> data_2, uint i_prod) {
    py::buffer_info buf_1 = data_1.request(), buf_2 = data_2.request();
    if ((buf_1.ndim != 1) || (buf_2.ndim != 1)) {
        throw std::runtime_error("Number of dimensions must be one");
    }
    if (buf_1.size != buf_2.size) {
        throw std::runtime_error("Length of the data vectors must be the same.");
    }
    if (i_prod >= n_prod) {
        throw std::runtime_error("Index outside valid range!");
    }
    uint64_t L_data = buf_1.size;
    py::gil_scoped_release release;
    accumulate((DataType *)buf_1.ptr, (DataType *)buf_2.ptr, L_data, i_prod);
}

// INTEGRAL PART ////////////////////

template <class BinType, class DataType>
inline void
Histogram2D<BinType, DataType, typename std::enable_if<std::is_integral<DataType>::value>::type>::to_middleman(
    uint i_prod, int this_thread, uint biny, uint binx) {
    if (hs(i_prod, this_thread, biny, binx) == 255) {
        _Pragma("omp atomic update") histogram(i_prod, biny, binx) += (1 << 8);
    }
    hs(i_prod, this_thread, biny, binx)++;
}

template <class BinType, class DataType>
inline void
Histogram2D<BinType, DataType,
            typename std::enable_if<std::is_integral<DataType>::value>::type>::reduction_and_reset_threads() {
    for (int thread = 0; thread < n_threads; thread++) {
#pragma omp parallel
        {
            manage_thread_affinity();
#pragma omp for collapse(3)
            for (uint k = 0; k < n_prod; k++) {
                for (uint j = 0; j < nofbins; j++) {
                    for (uint i = 0; i < nofbins; i++) {
                        histogram(k, j, i) += hs(k, thread, j, i);
                        hs(k, thread, j, i) = 0;
                    }
                }
            }
        }
    }
}

template <class BinType, class DataType>
void Histogram2D<BinType, DataType, typename std::enable_if<std::is_integral<DataType>::value>::type>::reset() {
    for (uint k = 0; k < n_prod; k++) {
        for (uint j = 0; j < nofbins; j++) {
            for (uint i = 0; i < nofbins; i++) {
                histogram(k, j, i) = 0;
            }
        }
    }
}

template <class BinType, class DataType>
void Histogram2D<BinType, DataType, typename std::enable_if<std::is_integral<DataType>::value>::type>::reset_threads() {
    for (uint l = 0; l < n_prod; l++) {
        for (int k = 0; k < n_threads; k++) {
            for (uint j = 0; j < nofbins; j++) {
                for (uint i = 0; i < nofbins; i++) {
                    hs(l, k, j, i) = 0;
                }
            }
        }
    }
}

template <class BinType, class DataType>
uint64_t
Histogram2D<BinType, DataType, typename std::enable_if<std::is_integral<DataType>::value>::type>::how_much_clip() {
    uint64_t clip = 0;
    uint n_i = histogram.get_n_i();
    uint n_j = histogram.get_n_j();
    for (uint k = 0; k < n_prod; k++) {
        for (uint i = 0; i < n_i; i++) {
            clip += histogram(k, 0, i);
            clip += histogram(k, n_j - 1, i);
        }
        for (uint j = 1; j < n_j - 1; j++) {
            clip += histogram(k, j, 0);
            clip += histogram(k, j, n_i - 1);
        }
    }
    return clip;
}

template <class BinType, class DataType>
void Histogram2D<BinType, DataType, typename std::enable_if<std::is_integral<DataType>::value>::type>::accumulate_py(
    py::array_t<DataType> data_1, py::array_t<DataType> data_2, uint i_prod) {
    py::buffer_info buf_1 = data_1.request(), buf_2 = data_2.request();
    if ((buf_1.ndim != 1) || (buf_2.ndim != 1)) {
        throw std::runtime_error("Number of dimensions must be one");
    }
    if (buf_1.size != buf_2.size) {
        throw std::runtime_error("Length of the data vectors must be the same.");
    }
    if (i_prod >= n_prod) {
        throw std::runtime_error("Index outside valid range!");
    }
    uint64_t L_data = buf_1.size;
    py::gil_scoped_release release;
    accumulate((DataType *)buf_1.ptr, (DataType *)buf_2.ptr, L_data, i_prod);
}

///// METHODS BOTH FLOATING POINTS AND INTEGERS HAVE END
///////////////////////
