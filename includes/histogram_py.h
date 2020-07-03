#pragma once

#include <omp_extra.h>
#include <pybind11/pybind11.h>
#include <pybind11/complex.h>
#include <pybind11/numpy.h>
namespace py = pybind11;
using namespace pybind11::literals;

#include <histogram.h>
#include <histogram2D.h>

void init_Histograms(py::module &m);
