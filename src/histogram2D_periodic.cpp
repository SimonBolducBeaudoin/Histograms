#include "histogram2D_periodic.h"

// Explicit instantiation of Calculator for float and double types
template class Histogram2D_periodic<uint64_t, double>;
template class Histogram2D_periodic<uint32_t, double>;
template class Histogram2D_periodic<uint64_t, float>;
template class Histogram2D_periodic<uint32_t, float>;
