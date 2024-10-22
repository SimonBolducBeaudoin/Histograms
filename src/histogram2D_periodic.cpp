#include "histogram2D.h"

// Explicit instantiation of Calculator for float and double types
template class Histogram2D<uint64_t, double>;
template class Histogram2D<uint32_t, double>;
template class Histogram2D<uint64_t, float>;
template class Histogram2D<uint32_t, float>;
template class Histogram2D<uint64_t, uint8_t>;
template class Histogram2D<uint32_t, uint8_t>;
template class Histogram2D<uint64_t, uint16_t>;
template class Histogram2D<uint32_t, uint16_t>;
template class Histogram2D<uint64_t, int8_t>;
template class Histogram2D<uint32_t, int8_t>;
template class Histogram2D<uint64_t, int16_t>;
template class Histogram2D<uint32_t, int16_t>;
