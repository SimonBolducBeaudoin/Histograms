template<class BinType , class DataType>
template<class ConstructorType,class Enable>
Histogram<BinType,DataType>::Histogram( uint nofbins , int n_threads , ConstructorType max )
:
	nofbins(nofbins) ,
	n_threads(n_threads),
	histogram(Multi_array<BinType,1> (nofbins)),
	max(max), bit(0)
{
	omp_set_num_threads(n_threads);
	reset();
}

template<class BinType , class DataType>
template<class ConstructorType,class Enable>
Histogram<BinType,DataType>::Histogram( int n_threads )
:
	nofbins( 1<<(8*sizeof(ConstructorType)) ) ,
	n_threads(n_threads),
	histogram	( Multi_array<BinType,1>(1<<(8*sizeof(ConstructorType))) ),
	max(1.0), bit(8)
{	
	omp_set_num_threads(n_threads);
	reset();
}

template<class BinType , class DataType>
template<class ConstructorType,class Enable>
Histogram<BinType,DataType>::Histogram( int n_threads , uint bit )
:
	nofbins( 1<<bit ) ,
	n_threads(n_threads),
	histogram	( Multi_array<BinType,1>(1<<bit) ),
	max(1.0), bit(bit)
{	
	omp_set_num_threads(n_threads);
	reset();
}

// ACCUMULATE METHODS
#define _PRAGMA_(x) _Pragma (#x)
#define PRAGMA_GCC_UNROLL(x) _PRAGMA_(GCC unroll x)

#define ACCUMULATE_DOUBLE(BIN_TYPE)\
template<> \
template<> \
void Histogram<BIN_TYPE,double>::accumulate( double* data,  uint64_t L_data ) \
{ \
	double bin_width = 2.0*max/( nofbins ); \
	BIN_TYPE* histogram_local = histogram.get_ptr();\
	_Pragma("omp parallel") \
	{ \
		manage_thread_affinity(); \
		_Pragma("omp for reduction(+:histogram_local[:nofbins])") \
		for (uint64_t i=0; i<L_data; i++) \
		{ \
			float_to_hist( data[i], histogram_local , max , bin_width ); \
		} \
	} \
} \

#define ACCUMULATE_FLOAT(BIN_TYPE,UNROLL)\
template<> \
template<> \
void Histogram<BIN_TYPE,float>::accumulate( float* data,  uint64_t L_data ) \
{ \
	float bin_width = 2.0*max/( nofbins ); \
	BIN_TYPE* histogram_local = histogram.get_ptr();\
	_Pragma("omp parallel") \
	{ \
		manage_thread_affinity(); \
		_Pragma("omp for reduction(+:histogram_local[:nofbins])") \
		for (uint64_t i=0; i<L_data-(L_data%UNROLL); i+=UNROLL)\
		{ \
			PRAGMA_GCC_UNROLL(UNROLL)\
			for (uint64_t j=0; j<UNROLL; j++) \
			{\
				float_to_hist( data[i+j], histogram_local , max , bin_width ); \
			}\
		} \
	} \
	for (uint64_t i=L_data-(L_data%UNROLL); i<L_data; i++)\
	{\
		float_to_hist( data[i], histogram.get_ptr() , max , bin_width ); \
	}\
} \


#define ACCUMULATE_UINT8(BIN_TYPE,UNROLL)\
template<>\
template<>\
void Histogram<BIN_TYPE,uint8_t>::accumulate( uint8_t* data,  uint64_t L_data )\
{\
	BIN_TYPE* histogram_local = histogram.get_ptr();\
    _Pragma("omp parallel")\
    {\
        manage_thread_affinity(); \
		_Pragma("omp for reduction(+:histogram_local[:1<<8])")\
		for (uint64_t i=0; i<L_data-(L_data%UNROLL); i+=UNROLL)\
		{\
			PRAGMA_GCC_UNROLL(UNROLL)\
			for (uint64_t j=0; j<UNROLL; j++) \
			{\
				histogram_local[ data[i+j] ]++;\
			}\
		}\
    }\
	for (uint64_t i=L_data-(L_data%UNROLL); i<L_data; i++)\
	{\
		histogram[ data[i] ]++;\
	}\
}\

#define ACCUMULATE_UINT16(BIN_TYPE,UNROLL)\
template<>\
template<>\
void Histogram<BIN_TYPE,uint16_t>::accumulate( uint16_t* data, uint64_t L_data )\
{\
	int b = bit;\
	BIN_TYPE* histogram_local = histogram.get_ptr();\
    _Pragma("omp parallel")\
    {\
        manage_thread_affinity(); \
        _Pragma( "omp for reduction(+:histogram_local[:1<<b])" )\
		for (uint64_t i=0; i<L_data-(L_data%UNROLL); i+=UNROLL)\
		{\
			PRAGMA_GCC_UNROLL(UNROLL)\
			for (uint64_t j=0; j<UNROLL; j++) \
			{\
				histogram_local[ data[i+j] ]++; \
			}\
		}\
    }\
	for (uint64_t i=L_data-(L_data%UNROLL); i<L_data; i++)\
	{\
		histogram[ data[i] ]++;\
	}\
}

// template<>
// template<>
// void Histogram<BIN_TYPE,uint16_t>::accumulate( uint16_t* data, uint64_t L_data , int tail )
// {
	// int b = bit;
	// int tail = 16-b;
	// BIN_TYPE* histogram_local = histogram.get_ptr();
    // _Pragma("omp parallel")
    // {
        // manage_thread_affinity();
        // _Pragma( "omp for reduction(+:histogram_local[:1<<b])" )
		// for (uint64_t i=0; i<L_data-(L_data%UNROLL); i+=UNROLL)
		// {
			// PRAGMA_GCC_UNROLL(UNROLL)
			// for (uint64_t j=0; j<UNROLL; j++)
			// {
				// histogram_local[ data[i+j] >> tail ]++;
			// }
		// }
    // }
	// for (uint64_t i=L_data-(L_data%UNROLL); i<L_data; i++)
	// {
		// histogram[ data[i] >> tail ]++;
	// }
// }



#define ACCUMULATE_INT8(BIN_TYPE,UNROLL)\
template<>\
template<>\
void Histogram<BIN_TYPE,int8_t>::accumulate( int8_t* data,  uint64_t L_data )\
{\
    int min_val = 1<<(8-1);\
	BIN_TYPE* histogram_local = histogram.get_ptr();\
    _Pragma("omp parallel")\
    {\
        manage_thread_affinity();\
		_Pragma("omp for reduction(+:histogram_local[:1<<8])")\
		for (uint64_t i=0; i<L_data-(L_data%UNROLL); i+=UNROLL)\
		{\
			PRAGMA_GCC_UNROLL(UNROLL)\
			for (uint64_t j=0; j<UNROLL; j++) \
			{\
				histogram_local[ (int)(data[i+j])+min_val ]++;\
			}\
		}\
    }\
	for (uint64_t i=L_data-(L_data%UNROLL); i<L_data; i++)\
	{\
		histogram[ (int)(data[i])+min_val  ]++;\
	}\
}\

#define ACCUMULATE_INT16(BIN_TYPE,UNROLL)\
template<>\
template<>\
void Histogram<BIN_TYPE, int16_t>::accumulate( int16_t* data,  uint64_t L_data )\
{\
	int b = bit;\
    int min_val = 1<<(b-1);\
	BIN_TYPE* histogram_local = histogram.get_ptr();\
    _Pragma("omp parallel")\
    {\
        manage_thread_affinity(); \
        _Pragma( "omp for reduction(+:histogram_local[:1<<b])" )\
		for (uint64_t i=0; i<L_data-(L_data%UNROLL); i+=UNROLL)\
		{\
			PRAGMA_GCC_UNROLL(UNROLL)\
			for (uint64_t j=0; j<UNROLL; j++) \
			{\
				histogram_local[ (int)(data[i+j])+min_val ]++; \
			}\
		}\
    }\
	for (uint64_t i=L_data-(L_data%UNROLL); i<L_data; i++)\
	{\
		histogram[ (int)(data[i])+min_val  ]++;\
	}\
}

// template<>
// template<>
// void Histogram<BIN_TYPE, int16_t>::accumulate( int16_t* data,  uint64_t L_data , int tail )
// {
	// int b = bit;
	// int tail = 16-b ;
	// BIN_TYPE* histogram_local = histogram.get_ptr();
	// uint16_t* data_unsigned = (uint16_t *) data;
    // _Pragma("omp parallel")
    // {
        // manage_thread_affinity();
        // _Pragma( "omp for reduction(+:histogram_local[:1<<b])" )
		// for (uint64_t i=0; i<L_data-(L_data%UNROLL); i+=UNROLL)
		// {
			// PRAGMA_GCC_UNROLL(UNROLL)
			// for (uint64_t j=0; j<UNROLL; j++)
			// {
				// histogram_local[ data_unsigned[i+j] >> tail ]++; 
			// }
		// }
    // }
	// for (uint64_t i=L_data-(L_data%UNROLL); i<L_data; i++)
	// {
		// histogram[ data_unsigned[i] >> tail ]++;
	// }
// }

#define ACCUMULATE(BIN_TYPE) \
ACCUMULATE_DOUBLE(BIN_TYPE);\
ACCUMULATE_FLOAT(BIN_TYPE,2);\
ACCUMULATE_UINT8(BIN_TYPE,8);\
ACCUMULATE_UINT16(BIN_TYPE,4);\
ACCUMULATE_INT8(BIN_TYPE,8);\
ACCUMULATE_INT16(BIN_TYPE,4);

ACCUMULATE(uint64_t) ;
ACCUMULATE(uint32_t) ;

#undef ACCUMULATE_DOUBLE
#undef ACCUMULATE_FLOAT
#undef ACCUMULATE_UINT8
#undef ACCUMULATE_UINT16
#undef ACCUMULATE_INT8
#undef ACCUMULATE_INT16
#undef ACCUMULATE

#undef _PRAGMA_
#undef PRAGMA_GCC_UNROLL

template<class BinType,class DataType>
void Histogram<BinType,DataType>::reset()
{
	for (uint i=0; i<nofbins; i++)
	{
		histogram(i) = 0 ;
	}
}

/////////
// SWAPS
/////////
// template<class BinType,class DataType>
// template<class UnsignedType,class Enable>
// void Histogram<BinType,DataType>::swap()
// {
	// const uint halfsize = 1<<(bit-1);
	// Multi_array<BinType,1> tmp (halfsize);
	// for ( uint i=0; i<halfsize; i++)
	// {
		// tmp[i] = histogram[i];
		// histogram[i] = histogram[i+halfsize];
		// histogram[i+halfsize] = tmp[i];
	// }
// }

template<class BinType,class Datatype>
template<class FloatType>
inline void Histogram<BinType,Datatype>::float_to_hist( FloatType data, BinType* histogram , FloatType max , FloatType bin_width )
{ 	
	/*
		Two simplifications where made :
			- A conditionnal was removed by stacking all clipping in the first bin
				- This indice a very sligh error due to <= instead of < for the negative cliping
	*/
    std::abs(data) >= max ? histogram[0]++ : histogram[ (unsigned int)((data+max)/(bin_width)) ]++ ;
	
    // histogram[ (std::abs(data) < max) * (uint)((data+max)/(bin_width)) ]++ ;
}

/////////////////////////
// Histogram properties
/////////////////////////

template<class BinType,class Datatype>
template<class AbscisseType>
double Histogram<BinType,Datatype>::moment( AbscisseType* bins , uint exp , int n_threads , bool no_clip)
{
	uint64_t n_total = ::moment( histogram.get_ptr() , bins , nofbins , 0 , 1 , n_threads , no_clip ) ;
    return ::moment( histogram.get_ptr() , bins, nofbins, exp, n_total , n_threads,no_clip );
}
template<class BinType,class Datatype>
template<class AbscisseType>
double Histogram<BinType,Datatype>::moment( AbscisseType* bins , uint exp , uint64_t n_total , int n_threads, bool no_clip )
{
    return ::moment( histogram.get_ptr(), bins, nofbins, exp, n_total , n_threads, no_clip );
}
template<class BinType,class Datatype>
template<class AbscisseType>
double Histogram<BinType,Datatype>::centered_moment( AbscisseType* bins , uint exp , int n_threads , bool no_clip)
{
	uint64_t n_total = ::moment( histogram.get_ptr() , bins , nofbins , 0 , 1 , n_threads , no_clip ) ;
    return ::centered_moment( histogram.get_ptr() , bins, nofbins, exp, n_total , n_threads,no_clip );
}
template<class BinType,class Datatype>
template<class AbscisseType>
double Histogram<BinType,Datatype>::centered_moment( AbscisseType* bins , uint exp , uint64_t n_total , int n_threads, bool no_clip )
{
    return ::centered_moment( histogram.get_ptr(), bins, nofbins, exp, n_total , n_threads, no_clip );
}

template<class BinType,class Datatype>
uint64_t Histogram<BinType,Datatype>::how_much_clip()
{
    return histogram(0)+histogram(histogram.get_n_i()-1);
}


/*
## PYTHON WRAPPER METHODS
*/
/*
### accumulate METHODS
*/
template<class BinType,class Datatype>
template<class AccumulateType>
void Histogram<BinType,Datatype>::accumulate_py( py::array_t<AccumulateType> data )
{
	py::buffer_info buf = data.request(); 

    if (buf.ndim != 1 )
    {
		throw std::runtime_error("Number of dimensions must be one");
	}
	
	uint64_t L_data = buf.size ;
	 
	accumulate( (AccumulateType*)buf.ptr , L_data );
}

template<class BinType,class Datatype>
template<class AbscisseType>
double Histogram<BinType,Datatype>::moment_py( py::array_t<AbscisseType> bins , uint exp , int n_threads , bool no_clip)
{
	py::buffer_info buf = bins.request(); 
    if (buf.ndim != 1 )
    {
		throw std::runtime_error("Number of dimensions must be one");
	}
	else if (buf.shape[0] != nofbins)
	{
		throw std::runtime_error("Length of abscisse must correspond to the number of bins of the histogram");
	}
	return moment( (AbscisseType*)buf.ptr , exp , n_threads,no_clip );
}

template<class BinType,class Datatype>
template<class AbscisseType>
double Histogram<BinType,Datatype>::moment_py( py::array_t<AbscisseType> bins , uint exp , uint64_t n_total , int n_threads, bool no_clip )
{
	py::buffer_info buf = bins.request(); 
    if (buf.ndim != 1 )
    {
		throw std::runtime_error("Number of dimensions must be one");
	}
	else if (buf.shape[0] != nofbins)
	{
		throw std::runtime_error("Length of abscisse must correspond to the number of bins of the histogram");
	}
	return moment( (AbscisseType*)buf.ptr , exp , n_total , n_threads,no_clip );
}
template<class BinType,class Datatype>
template<class AbscisseType>
double Histogram<BinType,Datatype>::centered_moment_py( py::array_t<AbscisseType> bins , uint exp , int n_threads , bool no_clip)
{
	py::buffer_info buf = bins.request(); 
    if (buf.ndim != 1 )
    {
		throw std::runtime_error("Number of dimensions must be one");
	}
	else if (buf.shape[0] != nofbins)
	{
		throw std::runtime_error("Length of abscisse must correspond to the number of bins of the histogram");
	}
	return centered_moment( (AbscisseType*)buf.ptr , exp , n_threads,no_clip );
}

template<class BinType,class Datatype>
template<class AbscisseType>
double Histogram<BinType,Datatype>::centered_moment_py( py::array_t<AbscisseType> bins , uint exp , uint64_t n_total , int n_threads, bool no_clip )
{
	py::buffer_info buf = bins.request(); 
    if (buf.ndim != 1 )
    {
		throw std::runtime_error("Number of dimensions must be one");
	}
	else if (buf.shape[0] != nofbins)
	{
		throw std::runtime_error("Length of abscisse must correspond to the number of bins of the histogram");
	}
	return centered_moment( (AbscisseType*)buf.ptr , exp , n_total , n_threads,no_clip );
}

// template<class BinType,class Datatype>
// template<class AbscisseType>
// double Histogram<BinType,Datatype>::moment_py( py::array_t<BinType> histogram, py::array_t<AbscisseType> bins , uint exp , int n_threads , bool no_clip)
// {
	// py::buffer_info h_buf = histogram.request(); 
	// py::buffer_info b_buf = bins.request(); 
    // if (h_buf.ndim != 1 )or(b_buf.ndim != 1 )
    // {
		// throw std::runtime_error("Number of dimensions must be one");
	// }
	// else if (h_buf.shape[0] != b_buf.shape[0])
	// {
		// throw std::runtime_error("Length of abscisse must correspond to the number of bins of the histogram");
	// }
    // uint64_t n_total =  ::moment( (BinType*)h_buf.ptr , (AbscisseType*)b_buf.ptr , nofbins , 0 , 1       , n_threads , no_clip ) ;
    // return              ::moment( (BinType*)h_buf.ptr , (AbscisseType*)b_buf.ptr , nofbins, exp, n_total , n_threads , no_clip );
// }

// template<class BinType,class Datatype>
// template<class AbscisseType>
// double Histogram<BinType,Datatype>::moment_py( py::array_t<BinType> histogram, py::array_t<AbscisseType> bins , uint exp , uint64_t n_total , int n_threads , bool no_clip)
// {
	// py::buffer_info h_buf = histogram.request(); 
	// py::buffer_info b_buf = bins.request(); 
    // if (h_buf.ndim != 1 )or(b_buf.ndim != 1 )
    // {
		// throw std::runtime_error("Number of dimensions must be one");
	// }
	// else if (h_buf.shape[0] != b_buf.shape[0])
	// {
		// throw std::runtime_error("Length of abscisse must correspond to the number of bins of the histogram");
	// }
    // return              ::moment( (BinType*)h_buf.ptr , (AbscisseType*)b_buf.ptr , nofbins, exp, n_total , n_threads , no_clip );
// }

/*
### get abscisse representation
*/

template<class BinType,class Datatype>
py::array_t<double> Histogram<BinType,Datatype>::abscisse_py( double max, uint nofbins )
{
	double bin_width = 2.0*max/( nofbins );
	Multi_array<double,1> abscisse(nofbins) ;	
    for(uint64_t i = 0; i < nofbins; i++)
    {
        abscisse[i] = ( (i + 0.5)*bin_width )- max ; 
    }
	return abscisse.move_py();
}















