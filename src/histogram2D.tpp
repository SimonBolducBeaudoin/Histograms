template<class BinType , class DataType>
template<class ConstructorType,class Enable>
Histogram2D<BinType,DataType>::Histogram2D( uint nofbins , int n_threads , ConstructorType max )
:
	nofbins(nofbins) ,
	n_threads(n_threads),
	histogram(Multi_array<BinType,2> (nofbins,nofbins)),
	hs(Multi_array<uint8_t,3>(n_threads,nofbins,nofbins)),
	max(max), bit(0)
{
	omp_set_num_threads(n_threads);
	reset();
	reset_threads();
}

template<class BinType , class DataType>
template<class ConstructorType,class Enable>
Histogram2D<BinType,DataType>::Histogram2D( int n_threads )
:
	nofbins( 1<<(8*sizeof(ConstructorType)) ) ,
	n_threads(n_threads),
	histogram( Multi_array<BinType,2>( 	1<<(8*sizeof(ConstructorType)),1<<(8*sizeof(ConstructorType)) )),
	hs( Multi_array<uint8_t,3>(n_threads,1<<(8*sizeof(ConstructorType)),1<<(8*sizeof(ConstructorType)) ) ),
	max(1.0), bit(8)
{	
	omp_set_num_threads(n_threads);
	reset();
	reset_threads();
}

template<class BinType , class DataType>
template<class ConstructorType,class Enable>
Histogram2D<BinType,DataType>::Histogram2D( int n_threads , uint bit )
:
	nofbins( 1<<bit ) ,
	n_threads(n_threads),
	histogram( Multi_array<BinType,2>(1<<bit,1<<bit) ),
	hs(Multi_array<uint8_t,3>(n_threads,1<<bit,1<<bit)),
	max(1.0), bit(bit)
{	
	omp_set_num_threads(n_threads);
	reset();
	reset_threads();
}

///////////////////////
///// METHODS : HISTOGRAMS OF FLOATING POINTS

template < class BinType, class DataType >
template<class FloatType>
inline void Histogram2D<BinType,DataType>::to_hs(FloatType data_y,FloatType data_x,FloatType max,FloatType bin_width,int this_thread)
{ 	
	uint binx ;
	uint biny ;
	compute_bins( data_y , data_x , max , bin_width, biny, binx) ; \
	to_middleman(this_thread,biny,binx);\
}

template < class BinType, class DataType >
inline void Histogram2D<BinType,DataType>::to_middleman(int this_thread,uint biny,uint binx)
{ 	
	if (hs(this_thread,biny,binx)==255)
	{
		_Pragma("omp atomic update")
		histogram(biny,binx)+=(1<<8);
	}
	hs(this_thread,biny,binx)++;
}

template < class BinType, class DataType >
template <class FloatType>
inline void Histogram2D<BinType,DataType>::compute_bins(FloatType data_2,FloatType data_1,FloatType max,FloatType bin_width,uint& biny,uint& binx)
{ 	
	/*
		Two simplifications where made :
			- A conditionnal was removed by stacking all clipping in the first bin
				- This indice a very sligh error due to <= instead of < for the negative cliping
	*/
    binx = std::abs(data_1) >= max ? 0 : (unsigned int)((data_1+max)/(bin_width)) ;
	biny = std::abs(data_2) >= max ? 0 : (unsigned int)((data_2+max)/(bin_width)) ;
}

template < class BinType, class DataType >
inline void Histogram2D<BinType,DataType>::reduction_and_reset_threads()
{	
    for (int thread =0; thread < n_threads; thread++)
    {
        #pragma omp parallel
        {
            manage_thread_affinity();	
            # pragma omp for collapse(2)
			for (uint j = 0; j<nofbins;j++)
			{
				for (uint i=0; i<nofbins; i++)
				{
					histogram(j,i)+=hs(thread,j,i);
					hs(thread,j,i) = 0;
				}
			}
        }
    }	
}

//////////////////////////
// ACCUMULATE METHODS
#define _PRAGMA_(x) _Pragma (#x)
#define PRAGMA_GCC_UNROLL(x) _PRAGMA_(GCC unroll x)
		
#define ACCUMULATE_DOUBLE(BIN_TYPE,UNROLL)\
template<> \
template<> \
void Histogram2D<BIN_TYPE,double>::accumulate(  double* data_1, double* data_2,  uint64_t L_data )\
{\
	double bin_width = 2.0*max/( nofbins );\
	_Pragma("omp parallel")\
	{\
		manage_thread_affinity(); \
		int this_thread = omp_get_thread_num();\
		_Pragma("omp for")\
		for (uint64_t i=0; i<L_data-(L_data%UNROLL); i+=UNROLL)\
		{\
			PRAGMA_GCC_UNROLL(UNROLL)\
			for (uint64_t j=0; j<UNROLL; j++) \
			{\
				to_hs(data_2[i+j],data_1[i+j],max,bin_width,this_thread);\
			}\
		}\
		for (uint64_t i=L_data-(L_data%UNROLL); i<L_data; i++)\
		{\
			to_hs(data_2[i],data_1[i],max,bin_width,0);\
		}\
	}\
	reduction_and_reset_threads();\
}

#define ACCUMULATE_FLOAT(BIN_TYPE,UNROLL)\
template<> \
template<> \
void Histogram2D<BIN_TYPE,float>::accumulate(  float* data_1, float* data_2,  uint64_t L_data ) \
{\
	float bin_width = 2.0*max/( nofbins );\
	_Pragma("omp parallel")\
	{\
		manage_thread_affinity(); \
		int this_thread = omp_get_thread_num();\
		_Pragma("omp for")\
		for (uint64_t i=0; i<L_data-(L_data%UNROLL); i+=UNROLL)\
		{\
			PRAGMA_GCC_UNROLL(UNROLL)\
			for (uint64_t j=0; j<UNROLL; j++) \
			{\
				to_hs(data_2[i+j],data_1[i+j],max,bin_width,this_thread);\
			}\
		}\
		for (uint64_t i=L_data-(L_data%UNROLL); i<L_data; i++)\
		{\
			to_hs(data_2[i],data_1[i],max,bin_width,0);\
		}\
	}\
	reduction_and_reset_threads();\
}

#define ACCUMULATE_UINT8(BIN_TYPE,UNROLL)\
template<> \
template<> \
void Histogram2D<BIN_TYPE,uint8_t>::accumulate( uint8_t* data_1, uint8_t* data_2,  uint64_t L_data )\
{\
	BIN_TYPE* histogram_local = histogram.get_ptr();\
    _Pragma("omp parallel")\
    {\
        manage_thread_affinity(); \
		_Pragma("omp for reduction(+:histogram_local[:1<<16])")\
		for (uint64_t i=0; i<L_data-(L_data%UNROLL); i+=UNROLL)\
		{\
			PRAGMA_GCC_UNROLL(UNROLL)\
			for (uint64_t j=0; j<UNROLL; j++) \
			{\
				histogram_local[nofbins*data_2[i+j]+data_1[i+j]]++;\
			}\
		}\
		for (uint64_t i=L_data-(L_data%UNROLL); i<L_data; i++)\
		{\
			histogram(data_2[i],data_1[i])++;\
		}\
    }\
	/*\
	_Pragma("omp parallel")\
    {\
        manage_thread_affinity(); \
		int this_thread = omp_get_thread_num();\
		_Pragma("omp for")\
		for (uint64_t i=0; i<L_data; i++) \
		{\
			to_middleman( this_thread ,  data_2[i] , data_1[i] ) ; \
		}\
    }\
	reduction_and_reset_threads();\
	*/\
}

#define ACCUMULATE_UINT16(BIN_TYPE,UNROLL)\
template<> \
template<> \
void Histogram2D<BIN_TYPE,uint16_t>::accumulate( uint16_t* data_1, uint16_t* data_2,  uint64_t L_data )\
{\
	_Pragma("omp parallel")\
	{\
		manage_thread_affinity(); \
		int this_thread = omp_get_thread_num();	\
		_Pragma("omp for")\
		for (uint64_t i=0; i<L_data-(L_data%UNROLL); i+=UNROLL)\
		{\
			PRAGMA_GCC_UNROLL(UNROLL)\
			for (uint64_t j=0; j<UNROLL; j++) \
			{\
				to_middleman( this_thread , data_2[i+j]  , data_1[i+j] );\
			}\
		}\
		for (uint64_t i=L_data-(L_data%UNROLL); i<L_data; i++)\
		{\
			histogram(data_2[i],data_1[i])++;\
		}\
	}\
	reduction_and_reset_threads();\
}

// template<>
// template<>
// void Histogram2D<BIN_TYPE,uint16_t>::accumulate( uint16_t* data_1, uint16_t* data_2,  uint64_t L_data )
// {
	// int b = bit;
	// int tail = 16-b;
	// _Pragma("omp parallel")
	// {
		// manage_thread_affinity();
		// int this_thread = omp_get_thread_num();
		// _Pragma("omp for")
		// for (uint64_t i=0; i<L_data-(L_data%UNROLL); i+=UNROLL)
		// {
			// PRAGMA_GCC_UNROLL(UNROLL)
			// for (uint64_t j=0; j<UNROLL; j++)
			// {
				// to_middleman( this_thread , data_2[i+j]>>tail  , data_1[i+j]>>tail );
			// }
		// }
		// for (uint64_t i=L_data-(L_data%UNROLL); i<L_data; i++)
		// {
			// histogram(data_2[i],data_1[i])++;
		// }
	// }
	// reduction_and_reset_threads();
// }

#define ACCUMULATE_INT8(BIN_TYPE,UNROLL)\
template<> \
template<> \
void Histogram2D<BIN_TYPE,int8_t>::accumulate( int8_t* data_1, int8_t* data_2,  uint64_t L_data )\
{\
    int min_val = 1<<(8-1);\
	BIN_TYPE* histogram_local = histogram.get_ptr();\
    _Pragma("omp parallel")\
    {\
        manage_thread_affinity(); \
		_Pragma("omp for reduction(+:histogram_local[:1<<16])")\
		for (uint64_t i=0; i<L_data-(L_data%UNROLL); i+=UNROLL)\
		{\
			PRAGMA_GCC_UNROLL(UNROLL)\
			for (uint64_t j=0; j<UNROLL; j++) \
			{\
				histogram_local[nofbins*data_2[i+j]+min_val+data_1[i+j]+min_val]++;\
			}\
		}\
		for (uint64_t i=L_data-(L_data%UNROLL); i<L_data; i++)\
		{\
			histogram(data_2[i]+min_val,data_1[i]+min_val)++;\
		}\
    }\
	reduction_and_reset_threads();\
}\

#define ACCUMULATE_INT16(BIN_TYPE,UNROLL)\
template<> \
template<> \
void Histogram2D<BIN_TYPE,int16_t>::accumulate( int16_t* data_1, int16_t* data_2,  uint64_t L_data )\
{\
    int min_val = 1<<(bit-1);\
	_Pragma("omp parallel")\
	{\
		manage_thread_affinity(); \
		int this_thread = omp_get_thread_num();	\
		_Pragma("omp for")\
		for (uint64_t i=0; i<L_data-(L_data%UNROLL); i+=UNROLL)\
		{\
			PRAGMA_GCC_UNROLL(UNROLL)\
			for (uint64_t j=0; j<UNROLL; j++) \
			{\
				to_middleman( this_thread , (int)(data_2[i+j])+min_val , (int)(data_1[i+j])+min_val );\
			}\
		}\
		for (uint64_t i=L_data-(L_data%UNROLL); i<L_data; i++)\
		{\
			histogram((int)(data_2[i])+min_val,(int)(data_1[i])+min_val)++;\
		}\
	}\
	reduction_and_reset_threads();\
}

#define ACCUMULATE(BIN_TYPE)\
	ACCUMULATE_DOUBLE(BIN_TYPE,8) ;\
	ACCUMULATE_FLOAT(BIN_TYPE,8) ;\
	ACCUMULATE_UINT8(BIN_TYPE,8) ;\
	ACCUMULATE_UINT16(BIN_TYPE,4) ;\
	ACCUMULATE_INT8(BIN_TYPE,8) ;\
	ACCUMULATE_INT16(BIN_TYPE,4) ;

ACCUMULATE(uint64_t);
ACCUMULATE(uint32_t);

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
void Histogram2D<BinType,DataType>::reset()
{
	for (uint j=0; j<nofbins; j++)
	{
		for (uint i=0; i<nofbins; i++)
		{
			histogram(j,i) = 0 ;
		}
	}
}

template<class BinType,class DataType>
void Histogram2D<BinType,DataType>::reset_threads()
{
	for (int k=0; k<n_threads; k++)
	{
		for (uint j=0; j<nofbins; j++)
		{
			for (uint i=0; i<nofbins; i++)
			{
				hs(k,j,i) = 0 ;
			}
		}
	}
}


// template<class BinType,class DataType>
// template<class UnsignedType,class Enable>
// void Histogram2D<BinType,DataType>::swap()
// {
	// const uint halfsize = 1<<(bit-1);
	// Multi_array<BinType,2> tmp (halfsize,halfsize);
	// for (uint j=0; j<halfsize; j++)
	// {
		// for (uint i=0; i<halfsize; i++)
		// {
			// tmp(j,i) = histogram(j,i);
			// histogram(j,i) = histogram(j+halfsize,i+halfsize);
			// histogram(j+halfsize,i+halfsize) = tmp(j,i) ;
		// }
	// }
	// for (uint j=0; j<halfsize; j++)
	// {
		// for (uint i=0; i<halfsize; i++)
		// {
			// tmp(j,i) = histogram(j,i+halfsize);
			// histogram(j,i+halfsize) = histogram(j+halfsize,i);
			// histogram(j+halfsize,i) = tmp(j,i) ;
		// }
	// }
// }

/////////////////////////
// Histogram2D properties
/////////////////////////

template<class BinType,class DataType>
template<class AbscisseType>
double Histogram2D<BinType,DataType>::moment( AbscisseType* bins ,  uint exp_x  , uint exp_y , int n_threads , bool no_clip )
{
	uint64_t n_total = ::moment( histogram.get_ptr() , bins , nofbins , 0 , 0 , 1 , n_threads , no_clip) ;
    return ::moment(histogram.get_ptr() , bins, nofbins, exp_x , exp_y , n_total , n_threads , no_clip);
}

template<class BinType,class DataType>
template<class AbscisseType>
double Histogram2D<BinType,DataType>::moment( AbscisseType* bins ,  uint exp_x  , uint exp_y , uint64_t n_total , int n_threads , bool no_clip )
{
    return ::moment(histogram.get_ptr(), bins, nofbins, exp_x , exp_y , n_total , n_threads , no_clip);
}

template<class BinType,class DataType>
template<class AbscisseType>
double Histogram2D<BinType,DataType>::centered_moment( AbscisseType* bins ,  uint exp_x  , uint exp_y , int n_threads, bool no_clip )
{
	uint64_t n_total = ::moment( histogram.get_ptr() , bins , nofbins , 0 , 0 , 1 , n_threads , no_clip) ;
    return ::centered_moment(histogram.get_ptr() , bins, nofbins, exp_x , exp_y , n_total , n_threads , no_clip);
}

template<class BinType,class DataType>
template<class AbscisseType>
double Histogram2D<BinType,DataType>::centered_moment( AbscisseType* bins ,  uint exp_x  , uint exp_y , uint64_t n_total , int n_threads , bool no_clip)
{
    return ::centered_moment(histogram.get_ptr(), bins, nofbins, exp_x , exp_y , n_total , n_threads, no_clip );
}

template<class BinType,class Datatype>
uint64_t Histogram2D<BinType,Datatype>::how_much_clip()
{
    uint64_t clip = 0 ;
    uint n_i = histogram.get_n_i() ;
    uint n_j = histogram.get_n_j() ; 
    for (uint i=0;i<n_i;i++)
    {
        clip += histogram(0,i);
        clip += histogram(n_j-1,i);
    }
    for (uint j=1;j<n_j-1;j++)
    {
        clip += histogram(j,0);
        clip += histogram(j,n_i-1);
    }  
    return clip;
}

/////////////////////////
// PYTHON WRAPPER METHODS
/////////////////////////
template<class BinType,class DataType>
template<class AccumulateType>
void Histogram2D<BinType,DataType>::accumulate_py(  py::array_t<AccumulateType> data_1, py::array_t<AccumulateType> data_2 )
{
	py::buffer_info buf_1 = data_1.request(),
					buf_2 =	data_2.request(); 
    if ( (buf_1.ndim != 1)||(buf_2.ndim != 1) )
    {
		throw std::runtime_error("Number of dimensions must be one");
	}
	if ( buf_1.size !=  buf_2.size )
    {	
		throw std::runtime_error("Length of the data vectors must be the same.");
	}
	uint64_t L_data = buf_1.size ;
    py::gil_scoped_release release; 
	accumulate( (AccumulateType*)buf_1.ptr, (AccumulateType*)buf_2.ptr , L_data );
}

template<class BinType,class Datatype>
template<class AbscisseType>
double Histogram2D<BinType,Datatype>::moment_py( py::array_t<AbscisseType> bins , uint exp_x  , uint exp_y , int n_threads, bool no_clip )
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
    py::gil_scoped_release release; 
	return moment( (AbscisseType*)buf.ptr , exp_x , exp_y , n_threads, no_clip );
}

template<class BinType,class Datatype>
template<class AbscisseType>
double Histogram2D<BinType,Datatype>::moment_py( py::array_t<AbscisseType> bins , uint exp_x  , uint exp_y , uint64_t n_total , int n_threads, bool no_clip )
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
    py::gil_scoped_release release; 
	return moment( (AbscisseType*)buf.ptr , exp_x , exp_y , n_total , n_threads , no_clip);
}

template<class BinType,class Datatype>
template<class AbscisseType>
double Histogram2D<BinType,Datatype>::centered_moment_py( py::array_t<AbscisseType> bins , uint exp_x  , uint exp_y , int n_threads, bool no_clip )
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
    py::gil_scoped_release release; 
	return centered_moment( (AbscisseType*)buf.ptr , exp_x , exp_y , n_threads, no_clip );
}

template<class BinType,class Datatype>
template<class AbscisseType>
double Histogram2D<BinType,Datatype>::centered_moment_py( py::array_t<AbscisseType> bins , uint exp_x  , uint exp_y , uint64_t n_total , int n_threads, bool no_clip )
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
    py::gil_scoped_release release; 
	return centered_moment( (AbscisseType*)buf.ptr , exp_x , exp_y , n_total , n_threads, no_clip );
}

template<class BinType,class Datatype>
py::array_t<double> Histogram2D<BinType,Datatype>::abscisse_py( double max, uint nofbins )
{
	double bin_width = 2.0*max/( nofbins );
	Multi_array<double,1> abscisse(nofbins) ;	
    for(uint64_t i = 0; i < nofbins; i++)
    {
        abscisse[i] = ( (i + 0.5)*bin_width )- max ; 
    }
	return abscisse.move_py();
}