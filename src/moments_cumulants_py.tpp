template <class BinType, class AbscisseType>
std::vector<double> std_moments_py(np_array<BinType> &histogram, np_array<AbscisseType> &bins, uint order,
                                   bool no_clip) {

    py::buffer_info bins_buf = bins.request();
    py::buffer_info h_buf = histogram.request();
    if ((bins_buf.ndim != 1) or (h_buf.ndim != 1)) {
        throw std::runtime_error("Number of dimensions must be one");
    } else if (bins_buf.shape[0] != h_buf.shape[0]) {
        throw std::runtime_error("Length of abscisse must correspond to the number "
                                 "of bins of the histogram");
    }
    uint nofbins = h_buf.shape[0];

    return std_moments((BinType *)h_buf.ptr, (AbscisseType *)bins_buf.ptr, nofbins, order, no_clip);
}


template <class BinType, class AbscisseType>
np_array<double> std_2Dmoments_py(np_array<BinType>& np_histogram, np_array<AbscisseType>& np_binx, np_array<AbscisseType>& np_biny,  uint order) {
	
	Multi_array<BinType, 2> histogram = Multi_array<BinType, 2>::numpy_share(np_histogram);
	Multi_array<AbscisseType, 1> binx =  Multi_array<AbscisseType, 1>::numpy_share(np_binx);
	Multi_array<AbscisseType, 1> biny =  Multi_array<AbscisseType, 1>::numpy_share(np_biny);
	
	if ( (binx.get_n_i() != biny.get_n_i()) || (histogram.get_n_i() != histogram.get_n_j()) || (histogram.get_n_i() != binx.get_n_i()) ){
		throw std::runtime_error("Dimensions incompatibles.");
	}
	
    return std_2Dmoments(histogram, binx, biny, order).copy_py();
}

template <class BinType, class AbscisseType>
double moment_py(np_array<BinType> &histogram, np_array<AbscisseType> &bins, uint exp, uint64_t n_total,
                 bool no_clip) {
    py::buffer_info bins_buf = bins.request();
    py::buffer_info h_buf = histogram.request();
    if ((bins_buf.ndim != 1) or (h_buf.ndim != 1)) {
        throw std::runtime_error("Number of dimensions must be one");
    } else if (bins_buf.shape[0] != h_buf.shape[0]) {
        throw std::runtime_error("Length of abscisse must correspond to the number "
                                 "of bins of the histogram");
    }
    uint nofbins = h_buf.shape[0];

    return moment((BinType *)h_buf.ptr, (AbscisseType *)bins_buf.ptr, nofbins, exp, n_total, no_clip);
}

template <class BinType, class AbscisseType>
double moment_py(np_array<BinType> &histogram, np_array<AbscisseType> &bins, uint exp_x, uint exp_y,
                 uint64_t n_total, int n_threads, bool no_clip) {
    py::buffer_info bins_buf = bins.request();
    py::buffer_info h_buf = histogram.request();
    if ((bins_buf.ndim != 1) or (h_buf.ndim != 2)) {
        throw std::runtime_error("Dimensions no worky!");
    } else if ((bins_buf.shape[0] != h_buf.shape[0]) or (h_buf.shape[0] != h_buf.shape[1])) {
        throw std::runtime_error("Length of abscisse must correspond to the number "
                                 "of bins of the histogram");
    }
    uint nofbins = h_buf.shape[0];

    return moment((BinType *)h_buf.ptr, (AbscisseType *)bins_buf.ptr, nofbins, exp_x, exp_y, n_total,
                  n_threads, no_clip);
}

template <class BinType, class AbscisseType>
double centered_moment_py(np_array<BinType> &histogram, np_array<AbscisseType> &bins, uint exp,
                          uint64_t n_total, bool no_clip) {
    py::buffer_info bins_buf = bins.request();
    py::buffer_info h_buf = histogram.request();
    if ((bins_buf.ndim != 1) or (h_buf.ndim != 1)) {
        throw std::runtime_error("Number of dimensions must be one");
    } else if (bins_buf.shape[0] != h_buf.shape[0]) {
        throw std::runtime_error("Length of abscisse must correspond to the number "
                                 "of bins of the histogram");
    }
    uint nofbins = h_buf.shape[0];

    return centered_moment((BinType *)h_buf.ptr, (AbscisseType *)bins_buf.ptr, nofbins, exp, n_total,
                           no_clip);
}

template <class BinType, class AbscisseType>
double centered_moment_py(np_array<BinType> &histogram, np_array<AbscisseType> &bins, uint exp_x, uint exp_y,
                          uint64_t n_total, int n_threads, bool no_clip) {
    py::buffer_info bins_buf = bins.request();
    py::buffer_info h_buf = histogram.request();
    if (bins_buf.ndim != 1 or h_buf.ndim != 2) {
        throw std::runtime_error("Dimensions no worky!");
    } else if ((bins_buf.shape[0] != h_buf.shape[0]) or (h_buf.shape[0] != h_buf.shape[1])) {
        throw std::runtime_error("Length of abscisse must correspond to the number "
                                 "of bins of the histogram");
    }
    uint nofbins = h_buf.shape[0];

    return centered_moment((BinType *)h_buf.ptr, (AbscisseType *)bins_buf.ptr, nofbins, exp_x, exp_y,
                           n_total, n_threads, no_clip);
}
