#pragma once

#include <Multi_array.h>
#include <algorithm> // For std::max
#include <limits>    // For std::numeric_limits
#include <omp_extra.h>
#include <type_traits>

// Empty Base Class //
template <class BinType, class DataType, typename Enable = void> class Histogram2D_periodic;

// FloatType /////////
template <class BinType, class DataType>
class Histogram2D_periodic<BinType, DataType, typename std::enable_if<std::is_floating_point<DataType>::value>::type> {
  public:
    Histogram2D_periodic(uint nofbins, int n_threads, DataType max, uint n_hist=1, uint period=1);

    // double begin ////////////////////////////////////////////////////////////////////////////////////////
    template <class PointerType = DataType>
    typename std::enable_if<std::is_same<DataType, double>::value &&
                            std::is_same<PointerType, double *>::value>::type
    accumulate(PointerType data_1, PointerType data_2, uint64_t L_data, uint i_hist = 0, uint start = 0);
    // Thread safe accumulate //
    template <class PointerType = DataType>
    typename std::enable_if<std::is_same<DataType, double>::value &&
                            std::is_same<PointerType, double *>::value>::type
    accumulate(PointerType data_1, PointerType data_2, uint64_t L_data, uint i_hist, uint start, int this_thread);
    // Thread safe accumulate with float inputs //
    template <class PointerType>
    typename std::enable_if<std::is_same<DataType, double>::value &&
                            std::is_same<PointerType, float *>::value>::type
    accumulate(PointerType data_1, PointerType data_2, uint64_t L_data, uint i_hist, uint start, int this_thread);
    // double end /////////////////////////////////////////////////////////////////////////////////////////
    // float begin ////////////////////////////////////////////////////////////////////////////////////////
    template <class PointerType = DataType>
    typename std::enable_if<std::is_same<DataType, float>::value &&
                            std::is_same<PointerType, float *>::value>::type
    accumulate(PointerType data_1, PointerType data_2, uint64_t L_data, uint i_hist = 0, uint start = 0 );
    // Thread safe accumulate //
    template <class PointerType = DataType>
    typename std::enable_if<std::is_same<DataType, float>::value &&
                            std::is_same<PointerType, float *>::value>::type
    accumulate(PointerType data_1, PointerType data_2, uint64_t L_data, uint i_hist, uint start, int this_thread);
    // flaot end //////////////////////////////////////////////////////////////////////////////////////////

    void reset();

    uint get_nofbins() { return nofbins; };

    void accumulate_py(py::array_t<DataType> data_1, py::array_t<DataType> data_2, uint i_hist = 0, uint start = 0);

    uint64_t how_much_clip();

    // Sets and gets
    
    // returns histograms reshaped into a 4D array using move semantic (no copy involved)
    Multi_array<BinType, 4> get_histograms();
    // returns histograms reshaped into a 4D np array (copy by default)
    py::array_t<BinType> pass_to_py(const std::string& memory_transfert ="copy");

    static py::array_t<double> abscisse_py(double max, uint nofbins);

    uint64_t get_alloc_memory_size() {
        return histogram.get_alloc_memory_size() + hs.get_alloc_memory_size();
    };

    void reduction( uint i_hist=0 );

  private:
    const uint period;
    const uint prd_end;
    const uint n_hist;
    const uint n_prod;
    const uint nofbins;
    const int n_threads;
    Multi_array<BinType, 3> histogram;
    Multi_array<uint8_t, 4> hs;

    const DataType max;
    const DataType bin_width;

    void compute_bins(DataType data_1, DataType data_2, uint &biny, uint &binx);
    void to_middleman(uint i_prod, int this_thread, uint biny, uint binx);
    void to_hs(DataType data_y, DataType data_x, uint i_prod, int this_thread);

    void reduction_and_reset_threads( uint i_hist = 0 );
    void reset_threads();
};

#include "histogram2D_periodic.tpp"