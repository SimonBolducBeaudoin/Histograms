#pragma once

#include "moments_cumulants.h"
#include <Multi_array.h>
#include <omp_extra.h>
#include <type_traits>

/*
        TODOS
        - Quality of life : add a function that recovers 1D histograms from 2D
   histogram ?
        - Modify Multi_array for custom memory organisation (optimal for
   centered biased histograms)
*/

/*
https://en.cppreference.com/w/cpp/language/template_specialization
https://en.cppreference.com/w/cpp/language/member_template#Member_function_templates
*/

template <class BinType, class DataType> class Histogram {
  public:
    template </*float double*/
              class ConstructorType = DataType,
              class Enable = typename std::enable_if_t<
                  std::is_floating_point<ConstructorType>::value>> /*double, float*/
    Histogram(uint nofbins, int n_threads, ConstructorType max);

    template </*uint8_t, int8_t, uint16_t, int16_t*/
              class ConstructorType = DataType,
              class Enable = typename std::enable_if_t<std::is_integral<ConstructorType>::value>>
    Histogram(int n_threads);

    template </*uint8_t, int8_t, uint16_t, int16_t*/
              class ConstructorType = DataType,
              class Enable = typename std::enable_if_t<std::is_integral<ConstructorType>::value>>
    Histogram(int n_threads, uint bit);

    // C++ INTERFACE
    // Core functions
    template <class AccumulateType = DataType>
    void accumulate(AccumulateType *data, uint64_t L_data, size_t stride);

    void reset();

    // Sets and gets
    uint get_nofbins() { return nofbins; };

    // Histogram properties
    template <class AbscisseType = DataType>
    std::vector<double> std_moments(AbscisseType *bins, uint order, bool no_clip = false);

    // Python interface
    // Core functions
    template <class AccumulateType = DataType> void accumulate_py(py::array_t<AccumulateType> data);

    // template
    // <	/*uint8_t, int8_t, uint16_t, int16_t*/
    // class UnsignedType = DataType,
    // class Enable = typename
    // std::enable_if_t<std::is_integral<UnsignedType>::value>
    // >
    // void swap();

    uint64_t how_much_clip();

    template <class AbscisseType = DataType>
    std::vector<double> std_moments_py(py::array_t<AbscisseType> bins, uint order,
                                       bool no_clip = false);

    // Sets and gets
    py::array_t<BinType> share_py() { return histogram.share_py(); };
    static py::array_t<double> abscisse_py(double max, uint nofbins);

    uint64_t get_alloc_memory_size() { return histogram.get_alloc_memory_size(); };

  protected:
    uint nofbins;
    int n_threads;

    Multi_array<BinType, 1, uint32_t> histogram;

    DataType max; // Defines the window for accumulation of floats (used only when
                  // DataType = floats)
    uint bit;     // The number of bit for the abscisse of the integer histogram

    // C++ INTERFACE
    // Core functions
    template <class FloatType>
    void float_to_hist(FloatType data, BinType *histogram, FloatType max, FloatType bin_width);
};

#include "histogram.tpp"
