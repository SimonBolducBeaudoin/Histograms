#pragma once

#include <Multi_array.h>
#include <omp_extra.h>
#include <type_traits>

/*
https://en.cppreference.com/w/cpp/language/template_specialization
https://en.cppreference.com/w/cpp/language/member_template#Member_function_templates
*/

template <class BinType, class DataType = uint> class Histogram2D {
  public:
    template <class ConstructorType = DataType,
              class Enable = typename std::enable_if_t<
                  std::is_floating_point<ConstructorType>::value>> /*double, float*/
    Histogram2D(uint nofbins, int n_threads, ConstructorType max, uint n_prod);

    template </*uint8_t, int8_t, uint16_t, int16_t*/
              class ConstructorType = DataType,
              class Enable = typename std::enable_if_t<std::is_integral<ConstructorType>::value>>
    Histogram2D(int n_threads, uint n_prod);

    template </*uint8_t, int8_t, uint16_t, int16_t*/
              class ConstructorType = DataType,
              class Enable = typename std::enable_if_t<std::is_integral<ConstructorType>::value>>
    Histogram2D(int n_threads, uint bit, uint n_prod);

	// double //
    template <class AccumulateType = DataType,typename std::enable_if<std::is_same<AccumulateType, double>::value, int>::type = 0>
    void accumulate(AccumulateType *data_1, AccumulateType *data_2, uint64_t L_data,uint i_prod = 1);
	// float //
	template <class AccumulateType = DataType,typename std::enable_if<std::is_same<AccumulateType, float>::value, int>::type = 0>
    void accumulate(AccumulateType *data_1, AccumulateType *data_2, uint64_t L_data,uint i_prod = 1);
	// uint8 //
	template <class AccumulateType = DataType,typename std::enable_if<std::is_same<AccumulateType, uint8_t>::value, int>::type = 0>
    void accumulate(AccumulateType *data_1, AccumulateType *data_2, uint64_t L_data,uint i_prod = 1);
	// uint16 //
	template <class AccumulateType = DataType,typename std::enable_if<std::is_same<AccumulateType, uint16_t>::value, int>::type = 0>
    void accumulate(AccumulateType *data_1, AccumulateType *data_2, uint64_t L_data,uint i_prod = 1);
	// int8 //
	template <class AccumulateType = DataType,typename std::enable_if<std::is_same<AccumulateType, int8_t>::value, int>::type = 0>
    void accumulate(AccumulateType *data_1, AccumulateType *data_2, uint64_t L_data,uint i_prod = 1);
	// int16 //
	template <class AccumulateType = DataType,typename std::enable_if<std::is_same<AccumulateType, int16_t>::value, int>::type = 0>
    void accumulate(AccumulateType *data_1, AccumulateType *data_2, uint64_t L_data,uint i_prod = 1);
	

    void reset();

    uint64_t get_nofbins() { return nofbins; };

    template <class AccumulateType = DataType>
    void accumulate_py(py::array_t<AccumulateType> data_1, py::array_t<AccumulateType> data_2,
                       uint i_prod = 1);

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

    static py::array_t<double> abscisse_py(double max, uint nofbins);

    uint64_t get_alloc_memory_size() {
        return histogram.get_alloc_memory_size() + hs.get_alloc_memory_size();
    };

  protected:
    uint n_prod;
    uint nofbins;
    int n_threads;
    Multi_array<BinType, 3> histogram;
    Multi_array<uint8_t, 4> hs;

    DataType max; // Defines the window for accumulation of floats (used only
                  // when DataType = floats)
    int bit;      // The bitshift that is made on data when accumulating uint16_t
                  // DataType (used only when DataType = uint16_t)

    template <class FloatType>
    void compute_bins(FloatType data_1, FloatType data_2, FloatType max, FloatType bin_width,
                      uint &biny, uint &binx);
    void to_middleman(uint i_prod, int this_thread, uint biny, uint binx);
    template <class FloatType>
    void to_hs(FloatType data_y, FloatType data_x, FloatType max, FloatType bin_width, uint i_prod,
               int this_thread);

    void reduction_and_reset_threads();
    void reset_threads();
};

#include "histogram2D.tpp"