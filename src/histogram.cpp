#include <histogram.h>

// Explicit template instanciation
// See: https://docs.microsoft.com/en-us/cpp/cpp/explicit-instantiation?view=vs-2019

#define HISTOGRAM(BinType)\
template class Histogram<BinType,double>; \
	template Histogram<BinType,double>::Histogram(uint,int,double) ; \
template class Histogram<BinType,float>;\
	template Histogram<BinType,float>::Histogram(uint,int,float) ; \
template class Histogram<BinType,uint16_t>;\
	template Histogram<BinType,uint16_t>::Histogram(int) ; \
	template Histogram<BinType,uint16_t>::Histogram(int,uint) ; \
template class Histogram<BinType,uint8_t>;\
	template Histogram<BinType,uint8_t>::Histogram(int) ; \
	template Histogram<BinType,uint8_t>::Histogram(int,uint) ; \
template class Histogram<BinType,int16_t>;\
	template Histogram<BinType,int16_t>::Histogram(int) ; \
	template Histogram<BinType,int16_t>::Histogram(int,uint) ; \
template class Histogram<BinType,int8_t>; \
	template Histogram<BinType,int8_t>::Histogram(int) ; \
	template Histogram<BinType,int8_t>::Histogram(int,uint) ;

HISTOGRAM(uint64_t);
// HISTOGRAM(uint32_t);
// HISTOGRAM(uint16_t);

#undef PY_HISTOGRAM
