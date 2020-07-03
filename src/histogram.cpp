#include <histogram.h>

// Explicit template instanciation
// See: https://docs.microsoft.com/en-us/cpp/cpp/explicit-instantiation?view=vs-2019

#define HISTOGRAM(BinType)\
template class Histogram<BinType,double>;\
template class Histogram<BinType,float>;\
template class Histogram<BinType,uint16_t>;\
template class Histogram<BinType,uint8_t>;\
template class Histogram<BinType,int16_t>;\
template class Histogram<BinType,int8_t>;

// HISTOGRAM(uint64_t);
// HISTOGRAM(uint32_t);
// HISTOGRAM(uint16_t);

#undef PY_HISTOGRAM
