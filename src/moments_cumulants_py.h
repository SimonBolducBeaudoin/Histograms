#pragma once

#include "moments_cumulants.h"
#include <pybind11/complex.h>
#include <pybind11/numpy.h>
#include <pybind11/pybind11.h>
#include <pybind11/stl.h>
namespace py = pybind11;
using namespace pybind11::literals;

template <class NumpyType>
using np_array = py::array_t<NumpyType, py::array::c_style>;

// Numpy compatible functions

template <class HistType, class AbscisseType>
std::vector<double> std_moments_py(np_array<HistType> &histogram,
                                   np_array<AbscisseType> &bins, uint order,
                                   bool no_clip);

template <class HistType, class AbscisseType = double>
double moment_py(np_array<HistType> &histogram, np_array<AbscisseType> &bins,
                 uint exp, uint64_t n_total, bool no_clip = false);

template <class HistType, class AbscisseType = double>
double moment_py(np_array<HistType> &histogram, np_array<AbscisseType> &bins,
                 uint exp_x, uint exp_y, uint64_t n_total, int n_threads,
                 bool no_clip = false);

template <class HistType, class AbscisseType = double>
double centered_moment_py(np_array<HistType> &histogram,
                          np_array<AbscisseType> &bins, uint exp,
                          uint64_t n_total, bool no_clip = false);

template <class HistType, class AbscisseType = double>
double centered_moment_py(np_array<HistType> &histogram,
                          np_array<AbscisseType> &bins, uint exp_x, uint exp_y,
                          uint64_t n_total, int n_threads,
                          bool no_clip = false);

#include "moments_cumulants_py.tpp"