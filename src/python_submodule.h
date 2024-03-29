#pragma once

#include <omp_extra.h>
#include <pybind11/pybind11.h>
#include <pybind11/complex.h>
#include <pybind11/numpy.h>
#include <pybind11/stl.h>
namespace py = pybind11;
using namespace pybind11::literals;

#include "histogram.h"
#include "histogram2D.h"
#include "moments_cumulants_py.h"

void init_Histograms(py::module &m);
void init_moments_cumulants(py::module &m);

