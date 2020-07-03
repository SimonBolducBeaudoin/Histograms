
#include <histogram2D.h>

// Explicit template instanciation
// See: https://docs.microsoft.com/en-us/cpp/cpp/explicit-instantiation?view=vs-2019

#define HISTOGRAM2D(BinType)\
template class Histogram2D<BinType,double>;\
template class Histogram2D<BinType,float>;\
template class Histogram2D<BinType,uint16_t>;\
template class Histogram2D<BinType,uint8_t>;\
template class Histogram2D<BinType,int16_t>;\
template class Histogram2D<BinType,int8_t>;\

// HISTOGRAM2D(uint64_t);
// HISTOGRAM2D(uint32_t);
// HISTOGRAM2D(uint16_t);

#undef PY_HISTOGRAM2D

