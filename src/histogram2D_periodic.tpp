template <class BinType, class DataType>
Histogram2D_periodic<BinType, DataType, typename std::enable_if<std::is_floating_point<DataType>::value>::type>::
    Histogram2D_periodic(uint nofbins, int n_threads, DataType max, uint n_hist, uint period)
    // DataType Constructor ///////
    : period(std::max(period, (uint)1)),prd_end(period-1), n_hist(std::max(n_hist, (uint)1)), n_prod(n_hist * period),
      nofbins(std::max(nofbins, (uint)4)), n_threads(std::max(n_threads, 1)),
      // The actual histograms
      histogram(Multi_array<BinType, 3>(n_prod, nofbins, nofbins)),
      // threads copies
      hs(Multi_array<uint8_t, 4>(n_prod, n_threads, nofbins, nofbins)), 
      max(std::max(max, std::numeric_limits<DataType>::epsilon() * 4)), bin_width(2.0 * max / nofbins) {
    omp_set_num_threads(n_threads);
    reset(); // Resets all the memory to 0.
}

///////////////////////
///// METHODS  FLOATING POINTS
template <class BinType, class DataType>
inline void
Histogram2D_periodic<BinType, DataType, typename std::enable_if<std::is_floating_point<DataType>::value>::type>::
    compute_bins(DataType data_2, DataType data_1, uint &biny, uint &binx) {
    /*
            Two simplifications where made :
                    - A conditionnal was removed by stacking all clipping in the
       first bin
                            - This indice a very sligh error due to <= instead of
       < for the negative cliping
    */
    binx = std::abs(data_1) < max ? (unsigned int)((data_1 + max) / (bin_width)) : 0;
    biny = std::abs(data_2) < max ? (unsigned int)((data_2 + max) / (bin_width)) : 0;
}

template <class BinType, class DataType>
inline void
Histogram2D_periodic<BinType, DataType, typename std::enable_if<std::is_floating_point<DataType>::value>::type>::to_hs(
    DataType data_y, DataType data_x, uint i_prod, int this_thread) {
    uint binx;
    uint biny;
    compute_bins(data_y, data_x, biny, binx);
    to_middleman(i_prod, this_thread, biny, binx);
}

template <class BinType, class DataType>
py::array_t<double>
Histogram2D_periodic<BinType, DataType, typename std::enable_if<std::is_floating_point<DataType>::value>::type>::
    abscisse_py(double max, uint nofbins) {
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
inline void Histogram2D_periodic<BinType, DataType,
                     typename std::enable_if<std::is_floating_point<DataType>::value>::type>::reduction() {
    reduction_and_reset_threads();
}

///// METHODS FLOATING POINTS END
///////////////////////

//////////////////////
// ACCUMULATE METHODS
#define _PRAGMA_(x) _Pragma(#x)
#define PRAGMA_GCC_UNROLL(x) _PRAGMA_(GCC unroll x)
// DOUBLE BEGIN /////////////////////////////////////
#define UNROLL 8
template <class BinType, class DataType>
template <class PointerType>
typename std::enable_if<std::is_same<DataType, double>::value &&
                        std::is_same<PointerType, double *>::value>::type
Histogram2D_periodic<BinType, DataType, typename std::enable_if<std::is_floating_point<DataType>::value>::type>::
    accumulate(PointerType data_1, PointerType data_2, uint64_t L_data, uint i_hist, uint start) {
		
	//// V1
    // uint i_prod = i_hist * period + start;
	// #pragma omp parallel num_threads(n_threads)
    // {
        // manage_thread_affinity();
        // int this_thread = omp_get_thread_num();
		// #pragma omp for
        // for (uint64_t i = 0; i < L_data - (L_data % period); i += period) {
            // PRAGMA_GCC_UNROLL(UNROLL)
            // for (uint j = 0, k = start; j < period; j++, k = k < prd_end ? k + 1 : 0) {
                // to_hs(data_2[i + j], data_1[i + j], i_prod + k, this_thread);
            // }
        // }
    // }
	// uint64_t i = L_data - (L_data % period);
	// uint k = start; // periodic index
	// for (; i < L_data; i++, k = k < prd_end ? k + 1 : 0) {
		// to_hs(data_2[i], data_1[i], i_prod + k, 0);
	// }
    // reduction_and_reset_threads();
	
	// V2 (4x faster then V1)
	// If we use this version we don't need as much memory
    uint i_prod = i_hist * period + start;
	uint64_t top = L_data -(L_data%period);
	std::vector<uint> idx(period);
	for (uint k=0,j_p = start; k < period ; k++, j_p = j_p < prd_end ? j_p + 1 : 0) {	
		idx[k] = i_prod+j_p;
	}
	#pragma omp parallel num_threads(std::min((int)period,n_threads))
    {
        manage_thread_affinity();
        // int this_thread = omp_get_thread_num();
		#pragma omp for
		for (uint k=0; k < period ; k++) {
			PRAGMA_GCC_UNROLL(UNROLL)
			for (uint64_t i = k; i < top; i+=period) 
			{	
				to_hs(data_2[i], data_1[i], idx[k], 0);
			}
		}
		
    }
    uint64_t i = 0;
    uint j_p = start; // periodic index
	for (i=L_data -(L_data%period); i < L_data; i++, j_p = j_p < prd_end ? j_p + 1 : 0) {	
        to_hs(data_2[i], data_1[i], i_prod + j_p, 0);
    }
	reduction_and_reset_threads();
}

template <class BinType, class DataType>
template <class PointerType>
typename std::enable_if<std::is_same<DataType, double>::value &&
                        std::is_same<PointerType, double *>::value>::type
Histogram2D_periodic<BinType, DataType,
                     typename std::enable_if<std::is_floating_point<DataType>::value>::type>::
    accumulate(PointerType data_1, PointerType data_2, uint64_t L_data, uint i_hist, uint start,
               int this_thread) {
    // Thread safe version of accumulate
	
	//// V1
	// uint i_prod = i_hist * period;
    // uint64_t i = 0;
    // uint j_p = start; // periodic index
    // PRAGMA_GCC_UNROLL(UNROLL)
    // for (; i < L_data; i++, j_p = j_p < prd_end ? j_p + 1 : 0) {	
        // to_hs(data_2[i], data_1[i], i_prod + j_p, this_thread);
    // }
	
	//// V2
	uint i_prod = i_hist * period;
	std::vector<uint> idx(period);
	for (uint k=0,j_p = start; k < period ; k++, j_p = j_p < prd_end ? j_p + 1 : 0) {	
		idx[k] = i_prod+j_p;
	}
	
	uint64_t top = L_data -(L_data%period);
	for (uint k=0; k < period ; k++) {
		PRAGMA_GCC_UNROLL(UNROLL)		
		for (uint64_t i = k; i < top; i+=period) 
		{		
			to_hs(data_2[i], data_1[i], idx[k]	, this_thread);
		}
	}
	uint64_t i = 0;
    uint j_p = start; // periodic index
	for (i=L_data -(L_data%period); i < L_data; i++, j_p = j_p < prd_end ? j_p + 1 : 0) {	
        to_hs(data_2[i], data_1[i], i_prod + j_p, this_thread);
    }
}

template <class BinType, class DataType>
template <class PointerType>
typename std::enable_if<std::is_same<DataType, double>::value &&
                        std::is_same<PointerType, float *>::value>::type
Histogram2D_periodic<BinType, DataType,
                     typename std::enable_if<std::is_floating_point<DataType>::value>::type>::
    accumulate(PointerType data_1, PointerType data_2, uint64_t L_data, uint i_hist, uint start,
               int this_thread) {
    uint i_prod = i_hist * period;
	std::vector<uint> idx(period);
	for (uint k=0,j_p = start; k < prd_end ; k++, j_p = j_p < prd_end ? j_p + 1 : 0) {	
		idx[k] = i_prod+j_p;
	}
	
	uint64_t top = L_data -(L_data%period);
	for (uint k=0; k < prd_end ; k++) {	
		PRAGMA_GCC_UNROLL(UNROLL)
		for (uint64_t i = k; i < top; i+=period) 
		{	
			
			to_hs((double)data_2[i], (double)data_1[i], idx[k]	, this_thread);
		}
	}
	uint64_t i = 0;
    uint j_p = start; // periodic index
	for (i=L_data -(L_data%period); i < L_data; i++, j_p = j_p < prd_end ? j_p + 1 : 0) {	
        to_hs((double)data_2[i], (double)data_1[i], i_prod + j_p, this_thread);
    }
}
#undef UNROLL

// DOUBLE END //////////////////////////////////////
// FLOAT BEGIN /////////////////////////////////////
#define UNROLL 8
template <class BinType, class DataType>
template <class PointerType>
typename std::enable_if<std::is_same<DataType, float>::value &&
                        std::is_same<PointerType, float *>::value>::type
Histogram2D_periodic<BinType, DataType, typename std::enable_if<std::is_floating_point<DataType>::value>::type>::
    accumulate(PointerType data_1, PointerType data_2, uint64_t L_data, uint i_hist, uint start) {
    uint i_prod = i_hist * period + start;
	uint64_t top = L_data -(L_data%period);
	std::vector<uint> idx(period);
	for (uint k=0,j_p = start; k < period ; k++, j_p = j_p < prd_end ? j_p + 1 : 0) {	
		idx[k] = i_prod+j_p;
	}
	#pragma omp parallel num_threads(std::min((int)period,n_threads))
    {
        manage_thread_affinity();
        // int this_thread = omp_get_thread_num();
		#pragma omp for
		for (uint k=0; k < period ; k++) {
			PRAGMA_GCC_UNROLL(UNROLL)
			for (uint64_t i = k; i < top; i+=period) 
			{	
				to_hs(data_2[i], data_1[i], idx[k], 0); // no need to use this_thread here replaced by 0.
			}
		}
		
    }
    uint64_t i = 0;
    uint j_p = start; // periodic index
	for (i=L_data -(L_data%period); i < L_data; i++, j_p = j_p < prd_end ? j_p + 1 : 0) {	
        to_hs(data_2[i], data_1[i], i_prod + j_p, 0);
    }
	reduction_and_reset_threads();
}
#undef UNROLL
#define UNROLL 8
template <class BinType, class DataType>
template <class PointerType>
typename std::enable_if<std::is_same<DataType, float>::value &&
                        std::is_same<PointerType, float *>::value>::type
Histogram2D_periodic<BinType, DataType,
                     typename std::enable_if<std::is_floating_point<DataType>::value>::type>::
    accumulate(PointerType data_1, PointerType data_2, uint64_t L_data, uint i_hist, uint start,
               int this_thread) {
    
	uint i_prod = i_hist * period;
	std::vector<uint> idx(period);
	for (uint k=0,j_p = start; k < period ; k++, j_p = j_p < prd_end ? j_p + 1 : 0) {	
		idx[k] = i_prod+j_p;
	}
	
	uint64_t top = L_data -(L_data%period);
	for (uint k=0; k < period ; k++) {	
		PRAGMA_GCC_UNROLL(UNROLL)
		for (uint64_t i = k; i < top; i+=period) 
		{	
			to_hs(data_2[i], data_1[i], idx[k]	, this_thread);
		}
	}
	uint64_t i = 0;
    uint j_p = start; // periodic index
	for (i=L_data -(L_data%period); i < L_data; i++, j_p = j_p < prd_end ? j_p + 1 : 0) {	
        to_hs(data_2[i], data_1[i], i_prod + j_p, this_thread);
    }
	
}
#undef UNROLL
// FLOAT END /////////////////////////////////////
// ACCUMULATE END ////////////////////////////////
#undef _PRAGMA_
#undef PRAGMA_GCC_UNROLL

//////////////////////////////////////////////////
template <class BinType, class DataType>
inline void
Histogram2D_periodic<BinType, DataType, typename std::enable_if<std::is_floating_point<DataType>::value>::type>::
    to_middleman(uint i_prod, int this_thread, uint biny, uint binx) {
    if (hs(i_prod, this_thread, biny, binx) == 255) {
#pragma omp atomic update
        histogram(i_prod, biny, binx) += (1 << 8);
    }
    hs(i_prod, this_thread, biny, binx)++;
}

template <class BinType, class DataType>
inline void
Histogram2D_periodic<BinType, DataType, typename std::enable_if<std::is_floating_point<DataType>::value>::type>::
    reduction_and_reset_threads() {
    for (int thread = 0; thread < n_threads; thread++) {
#pragma omp parallel num_threads(n_threads)
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
py::array_t<BinType>
Histogram2D_periodic<BinType, DataType,
                     typename std::enable_if<std::is_floating_point<DataType>::value>::type>::share_py() {
    return histogram.share_py().reshape({n_hist,period,nofbins,nofbins});
};

template <class BinType, class DataType>
void Histogram2D_periodic<BinType, DataType,
                          typename std::enable_if<std::is_floating_point<DataType>::value>::type>::reset() {
	#pragma omp parallel num_threads(n_threads)
    {
        manage_thread_affinity();
		#pragma omp for collapse(3)
        for (uint k = 0; k < n_prod; k++) {
            for (uint j = 0; j < nofbins; j++) {
                for (uint i = 0; i < nofbins; i++) {
                    histogram(k, j, i) = 0;
                }
            }
        }
    }
    reset_threads();
}

template <class BinType, class DataType>
void Histogram2D_periodic<BinType, DataType,
    typename std::enable_if<std::is_floating_point<DataType>::value>::type>::reset_threads() {
    // Flattanable ...
	#pragma omp parallel num_threads(n_threads)
    {
        manage_thread_affinity();
		#pragma omp for collapse(4)
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
}

template <class BinType, class DataType>
uint64_t
Histogram2D_periodic<BinType, DataType,
            typename std::enable_if<std::is_floating_point<DataType>::value>::type>::
how_much_clip() {
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
void Histogram2D_periodic<BinType, DataType, typename std::enable_if<std::is_floating_point<DataType>::value>::type>::
    accumulate_py(py::array_t<DataType> data_1, py::array_t<DataType> data_2, uint i_hist, uint start) {
    py::buffer_info buf_1 = data_1.request(), buf_2 = data_2.request();
    if ((buf_1.ndim != 1) || (buf_2.ndim != 1)) {
        throw std::runtime_error("Number of dimensions must be one");
    }
    if (buf_1.size != buf_2.size) {
        throw std::runtime_error("Length of the data vectors must be the same.");
    }
    if (i_hist >= n_hist) {
        throw std::runtime_error("Index outside valid range!");
    }
	if (start >= period) {
        throw std::runtime_error("Starting point outside valid range!");
    }
    uint64_t L_data = buf_1.size;
    py::gil_scoped_release release;
    accumulate((DataType *)buf_1.ptr, (DataType *)buf_2.ptr, L_data, i_hist,start);
}
/////////////////////////////////////////////////////