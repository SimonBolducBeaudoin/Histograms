#include "moments_cumulants.h"

// Explicit instantiation
// see: https://en.cppreference.com/w/cpp/language/function_template

#define MOMENT(BIN_TYPE, ABSCISSE_TYPE)                                                                      \
    template std::vector<double> std_moments(BIN_TYPE *histogram, ABSCISSE_TYPE *bins, uint n_bins,          \
                                             uint order, bool no_clip);                                      \
	template Multi_array<double, 2> std_2Dmoments(Multi_array<BIN_TYPE, 2>& histogram, Multi_array<ABSCISSE_TYPE, 1>& binx, Multi_array<ABSCISSE_TYPE, 1>& biny, uint n_bins, uint order );     \
    template double moment(BIN_TYPE *histogram, ABSCISSE_TYPE *bins, uint n_bins, uint exp,                  \
                           uint64_t n_total, bool no_clip);                                                  \
    template double moment(BIN_TYPE *histogram, ABSCISSE_TYPE *bins, uint n_bins, uint exp_x, uint exp_y,    \
                           uint64_t n_total, int n_threads, bool no_clip);                                   \
    template double centered_moment(BIN_TYPE *histogram, ABSCISSE_TYPE *bins, uint n_bins, uint exp,         \
                                    uint64_t n_total, bool no_clip);                                         \
    template double centered_moment(BIN_TYPE *histogram, ABSCISSE_TYPE *bins, uint n_bins, uint exp_x,       \
                                    uint exp_y, uint64_t n_total, int n_threads, bool no_clip);

MOMENT(uint64_t, double);
MOMENT(uint, double);

#undef MOMENT
