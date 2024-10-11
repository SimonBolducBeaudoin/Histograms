#pragma once

#include <Multi_array.h>
#include <algorithm> // For std::max
#include <limits>    // For std::numeric_limits
#include <omp_extra.h>
#include <type_traits>

// Empty Base Class //
template <class BinType, class DataType, typename Enable = void> class Histogram2D;

// FloatType /////////
template <class BinType, class DataType>
class Histogram2D<BinType, DataType, typename std::enable_if<std::is_floating_point<DataType>::value>::type> {
  public:
    Histogram2D(uint nofbins, int n_threads, DataType max, uint n_prod);

    // double begin ////////////////////////////////////////////////////////////////////////////////////////
    template <class AccumulateType = DataType,
              typename std::enable_if<std::is_same<AccumulateType, double>::value, int>::type = 0>
    void accumulate(AccumulateType *data_1, AccumulateType *data_2, uint64_t L_data, uint i_prod = 1);
	// Thread safe accumulate // 
	template <class AccumulateType = DataType,
              typename std::enable_if<std::is_same<AccumulateType, double>::value, int>::type = 0>
    void accumulate(AccumulateType *data_1, AccumulateType *data_2, uint64_t L_data, uint i_prod ,int this_thread);
	// double end /////////////////////////////////////////////////////////////////////////////////////////
    // float begin ////////////////////////////////////////////////////////////////////////////////////////
    template <class AccumulateType = DataType,
              typename std::enable_if<std::is_same<AccumulateType, float>::value, int>::type = 0>
    void accumulate(AccumulateType *data_1, AccumulateType *data_2, uint64_t L_data, uint i_prod = 1);
	// Thread safe accumulate //
	template <class AccumulateType = DataType,
              typename std::enable_if<std::is_same<AccumulateType, float>::value, int>::type = 0>
    void accumulate(AccumulateType *data_1, AccumulateType *data_2, uint64_t L_data, uint i_prod ,int this_thread);
	// flaot end //////////////////////////////////////////////////////////////////////////////////////////

    void reset();

    uint get_nofbins() { return nofbins; };

    void accumulate_py(py::array_t<DataType> data_1, py::array_t<DataType> data_2, uint i_prod = 1);

    uint64_t how_much_clip();

    // Sets and gets
    py::array_t<BinType> share_py() { return histogram.share_py(); };

    static py::array_t<double> abscisse_py(double max, uint nofbins);

    uint64_t get_alloc_memory_size() { return histogram.get_alloc_memory_size() + hs.get_alloc_memory_size(); };

  protected:
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

    void reduction_and_reset_threads();
    void reset_threads();
};

// IntegerType /////////
template <class BinType, class DataType>
class Histogram2D<BinType, DataType, typename std::enable_if<std::is_integral<DataType>::value>::type> {
  public:
    Histogram2D(int n_threads, uint n_prod);
    Histogram2D(int n_threads, uint bit, uint n_prod);

    // uint8 //
    template <class AccumulateType = DataType,
              typename std::enable_if<std::is_same<AccumulateType, uint8_t>::value, int>::type = 0>
    void accumulate(AccumulateType *data_1, AccumulateType *data_2, uint64_t L_data, uint i_prod = 1);
    // uint16 //
    template <class AccumulateType = DataType,
              typename std::enable_if<std::is_same<AccumulateType, uint16_t>::value, int>::type = 0>
    void accumulate(AccumulateType *data_1, AccumulateType *data_2, uint64_t L_data, uint i_prod = 1);
    // int8 //
    template <class AccumulateType = DataType,
              typename std::enable_if<std::is_same<AccumulateType, int8_t>::value, int>::type = 0>
    void accumulate(AccumulateType *data_1, AccumulateType *data_2, uint64_t L_data, uint i_prod = 1);
    // int16 //
    template <class AccumulateType = DataType,
              typename std::enable_if<std::is_same<AccumulateType, int16_t>::value, int>::type = 0>
    void accumulate(AccumulateType *data_1, AccumulateType *data_2, uint64_t L_data, uint i_prod = 1);

    void reset();

    uint get_nofbins() { return nofbins; };

    void accumulate_py(py::array_t<DataType> data_1, py::array_t<DataType> data_2, uint i_prod = 1);

    // template
    // <	/*uint8_t, int8_t, uint16_t, int16_t*/
    // class UnsignedType = DataType,
    // class Enable = typename std::enable_if_t<
    // std::is_integral<UnsignedType>::value>
    // >
    // void swap();

    uint64_t how_much_clip();

    // Sets and gets
    py::array_t<BinType> share_py() { return histogram.share_py(); };

    uint64_t get_alloc_memory_size() { return histogram.get_alloc_memory_size() + hs.get_alloc_memory_size(); };

  protected:
    const uint n_prod;
    const uint nofbins;
    const int n_threads;
    Multi_array<BinType, 3> histogram;
    Multi_array<uint8_t, 4> hs;

    int bit; // The bitshift that is made on data when accumulating uint16_t
             // DataType (used only when DataType = uint16_t)

    void to_middleman(uint i_prod, int this_thread, uint biny, uint binx);

    void reduction_and_reset_threads();
    void reset_threads();
};

#include "histogram2D.tpp"