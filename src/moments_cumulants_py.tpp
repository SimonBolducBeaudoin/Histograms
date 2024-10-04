template <class HistType, class AbscisseType>
std::vector<double> std_moments_py(np_array<HistType> &histogram,
                                   np_array<AbscisseType> &bins, uint order,
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

  return std_moments((HistType *)h_buf.ptr, (AbscisseType *)bins_buf.ptr,
                     nofbins, order, no_clip);
}

template <class HistType, class AbscisseType>
double moment_py(np_array<HistType> &histogram, np_array<AbscisseType> &bins,
                 uint exp, uint64_t n_total, bool no_clip) {
  py::buffer_info bins_buf = bins.request();
  py::buffer_info h_buf = histogram.request();
  if ((bins_buf.ndim != 1) or (h_buf.ndim != 1)) {
    throw std::runtime_error("Number of dimensions must be one");
  } else if (bins_buf.shape[0] != h_buf.shape[0]) {
    throw std::runtime_error("Length of abscisse must correspond to the number "
                             "of bins of the histogram");
  }
  uint nofbins = h_buf.shape[0];

  return moment((HistType *)h_buf.ptr, (AbscisseType *)bins_buf.ptr, nofbins,
                exp, n_total, no_clip);
}

template <class HistType, class AbscisseType>
double moment_py(np_array<HistType> &histogram, np_array<AbscisseType> &bins,
                 uint exp_x, uint exp_y, uint64_t n_total, int n_threads,
                 bool no_clip) {
  py::buffer_info bins_buf = bins.request();
  py::buffer_info h_buf = histogram.request();
  if ((bins_buf.ndim != 1) or (h_buf.ndim != 2)) {
    throw std::runtime_error("Dimensions no worky!");
  } else if ((bins_buf.shape[0] != h_buf.shape[0]) or
             (h_buf.shape[0] != h_buf.shape[1])) {
    throw std::runtime_error("Length of abscisse must correspond to the number "
                             "of bins of the histogram");
  }
  uint nofbins = h_buf.shape[0];

  return moment((HistType *)h_buf.ptr, (AbscisseType *)bins_buf.ptr, nofbins,
                exp_x, exp_y, n_total, n_threads, no_clip);
}

template <class HistType, class AbscisseType>
double centered_moment_py(np_array<HistType> &histogram,
                          np_array<AbscisseType> &bins, uint exp,
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

  return centered_moment((HistType *)h_buf.ptr, (AbscisseType *)bins_buf.ptr,
                         nofbins, exp, n_total, no_clip);
}

template <class HistType, class AbscisseType>
double centered_moment_py(np_array<HistType> &histogram,
                          np_array<AbscisseType> &bins, uint exp_x, uint exp_y,
                          uint64_t n_total, int n_threads, bool no_clip) {
  py::buffer_info bins_buf = bins.request();
  py::buffer_info h_buf = histogram.request();
  if (bins_buf.ndim != 1 or h_buf.ndim != 2) {
    throw std::runtime_error("Dimensions no worky!");
  } else if ((bins_buf.shape[0] != h_buf.shape[0]) or
             (h_buf.shape[0] != h_buf.shape[1])) {
    throw std::runtime_error("Length of abscisse must correspond to the number "
                             "of bins of the histogram");
  }
  uint nofbins = h_buf.shape[0];

  return centered_moment((HistType *)h_buf.ptr, (AbscisseType *)bins_buf.ptr,
                         nofbins, exp_x, exp_y, n_total, n_threads, no_clip);
}
