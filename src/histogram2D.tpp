template<class BinType , class DataType>
template<class ConstructorType,class Enable>
Histogram2D<BinType,DataType>::Histogram2D( uint nofbins , int n_threads , ConstructorType max )
:
	nofbins(nofbins) ,
	n_threads(n_threads),
	histogram(Multi_array<BinType,2> (nofbins,nofbins)),
	max(max), bit(0)
{
	Checks() ;
	omp_set_num_threads(n_threads);
	Allocate_all_heap();
}

template<class BinType , class DataType>
template<class ConstructorType,class Enable>
Histogram2D<BinType,DataType>::Histogram2D( int n_threads )
:
	nofbins( 1<<(8*sizeof(ConstructorType)) ) ,
	n_threads(n_threads),
	histogram( Multi_array<BinType,2>( 1<<(8*sizeof(ConstructorType)) , 1<<(8*sizeof(ConstructorType)) )),
	max(1.0), bit(8)
{	
	Checks() ;
	omp_set_num_threads(n_threads);
	Allocate_all_heap();
}

template<class BinType , class DataType>
template<class ConstructorType,class Enable>
Histogram2D<BinType,DataType>::Histogram2D( int n_threads , uint bit )
:
	nofbins( 1<<(bit*sizeof(ConstructorType)) ) ,
	n_threads(n_threads),
	histogram(Multi_array<BinType,2> (1<<bit,1<<bit)),
	max(1.0), bit(bit)
{	
	Checks() ;
	omp_set_num_threads(n_threads);
	Allocate_all_heap();
}

template < class BinType, class DataType >
void Histogram2D<BinType,DataType>::Checks()
{
	Check_n_threads();
}

template < class BinType, class DataType >
void Histogram2D<BinType,DataType>::Check_n_threads()
{
	if ( n_threads <= 0 )
	{
		throw std::runtime_error(" n_threads <= 0 dont expect this to work... ");
	}
	else if ( n_threads > physical_n_threads() )
	{
		printf("Warning : The wanted number of thread (%d) is higher than the number of physical threads (%d) in this computer. n_thread was replaced by physical_n_threads. \n", n_threads, physical_n_threads() );
		n_threads = physical_n_threads();
	}
}

template < class BinType, class DataType >
void Histogram2D<BinType,DataType>::Allocate_all_heap()
{
	hs = (uint8_t**) malloc(n_threads* sizeof(uint8_t*));
	#pragma omp parallel
	{
		manage_thread_affinity();
		hs[omp_get_thread_num()]  = (uint8_t* ) calloc( nofbins*nofbins, sizeof(uint8_t));
	}
};

template < class BinType, class DataType >
void Histogram2D<BinType,DataType>::Free_all_heap()
{
	#pragma omp parallel
	{ 
		free(hs[omp_get_thread_num()]) ; 
		hs[omp_get_thread_num()] = NULL ;
	}
	free(hs) ; 	hs = NULL;
};

template < class BinType, class DataType >
Histogram2D<BinType,DataType>::~Histogram2D()
{	
	Free_all_heap();
} 

///////////////////////
///// METHODS : HISTOGRAMS OF FLOATING POINTS

// Warning ! this function can only be used inside a parralel process 
template < class BinType, class DataType >
inline void Histogram2D<BinType,DataType>::to_hist_middleman_pragma( int this_thread , uint32_t bin )
{ 	
	if (hs[this_thread][bin]==255)
	{
		_Pragma("omp atomic update")
		histogram.get_ptr()[bin]+=(1<<8);
	}
	hs[this_thread][bin]++;
}

template < class BinType, class DataType >
template <class FloatType>
inline void Histogram2D<BinType,DataType>::what_bin_float( FloatType data_1 , FloatType data_2, FloatType max, FloatType bin_width, uint16_t* binx, uint16_t* biny )
{ 	
    /*
    Possible optimisation could use ternary operator 
    */ 
	if (data_1 >= max)
	{
		// clipping
		*binx = nofbins-1;	
	}
	else if (data_1 < -(max))
	{
		// clipping
		// add one to first bin
		*binx = 0;
	}
	else
	{
	*binx = (uint16_t)((data_1+max)/(bin_width));
	}
	if (data_2 >= max)
	{
		// clipping
		*biny = nofbins-1;	
	}
	else if (data_2 < -(max))
	{
		// clipping
		// add one to first bin
		*biny = 0;
	}
	else
	{
	*biny = (uint16_t)((data_2+max)/(bin_width));
	}
}

template < class BinType, class DataType >
inline void Histogram2D<BinType,DataType>::reduction_and_reset()
{	
    for (int j =0; j < n_threads; j++)
    {
        #pragma omp parallel
        {
            manage_thread_affinity();	
            # pragma omp for
            for (uint64_t i=0; i<(nofbins*nofbins); i++)
            {
                # pragma omp atomic update
                histogram.get_ptr()[i]+=hs[j][i];
                hs[j][i] = 0;
            }
        }
    }	
}


//////////////////////////
// ACCUMULATE METHODS
		
#define ACCUMULATE_FLOAT(BIN_TYPE,FLOAT_TYPE)\
template<> \
template<> \
void Histogram2D<BIN_TYPE,FLOAT_TYPE>::accumulate(  FLOAT_TYPE* data_1, FLOAT_TYPE* data_2,  uint64_t L_data ) \
{\
	FLOAT_TYPE bin_width = 2.0*max/( nofbins );\
	_Pragma("omp parallel")\
	{\
		manage_thread_affinity(); \
		uint16_t binx = 0;\
		uint16_t biny = 0;\
		uint32_t bin;\
		int this_thread = omp_get_thread_num();\
		_Pragma("omp for")\
		for (uint64_t i=0; i<L_data; i++)\
		{\
			what_bin_float( data_1[i] ,  data_2[i] , max , bin_width, &binx, &biny) ; \
			bin =  (binx * nofbins) + biny ;  \
			to_hist_middleman_pragma( this_thread, bin );\
		}\
	}\
	reduction_and_reset();\
}

#define ACCUMULATE_UINT(BIN_TYPE)\
template<> \
template<> \
void Histogram2D<BIN_TYPE,uint8_t>::accumulate( uint8_t* data_1, uint8_t* data_2,  uint64_t L_data )\
{\
    _Pragma("omp parallel")\
    {\
        manage_thread_affinity(); \
		int this_thread = omp_get_thread_num();\
		_Pragma("omp for")\
		for (uint64_t i=0; i<L_data; i++) \
		{\
			to_hist_middleman_pragma( this_thread , (data_1[i]<<8) + data_2[i] ) ; \
		}\
    }\
	reduction_and_reset();\
}\
\
template<> \
template<> \
void Histogram2D<BIN_TYPE,uint16_t>::accumulate(  uint16_t* data_1, uint16_t* data_2,  uint64_t L_data )\
{\
	int b = bit;\
	int tail = 16-b;\
	_Pragma("omp parallel")\
	{\
		manage_thread_affinity(); \
		int this_thread = omp_get_thread_num();	\
		_Pragma("omp for")\
		for (uint64_t i=0 ; i<L_data ; i++)\
		{\
			to_hist_middleman_pragma( this_thread , ((data_1[i]>>tail)<< b) + (data_2[i]>>tail) );\
		}\
	}\
	reduction_and_reset();\
}

#define ACCUMULATE_INT(BIN_TYPE)\
template<> \
template<> \
void Histogram2D<BIN_TYPE,int8_t>::accumulate( int8_t* data_1, int8_t* data_2,  uint64_t L_data )\
{\
	uint8_t* data_1_unsigned = (uint8_t *) data_1;\
	uint8_t* data_2_unsigned = (uint8_t *) data_2;\
    _Pragma("omp parallel")\
    {\
        manage_thread_affinity(); \
		int this_thread = omp_get_thread_num();\
		_Pragma("omp for")\
		for (uint64_t i=0; i<L_data; i++) \
		{\
			to_hist_middleman_pragma( this_thread , (data_1_unsigned[i]<<8) + data_2_unsigned[i] ) ; \
		}\
    }\
	reduction_and_reset();\
}\
\
template<> \
template<> \
void Histogram2D<BIN_TYPE,int16_t>::accumulate( int16_t* data_1, int16_t* data_2,  uint64_t L_data )\
{\
	uint8_t* data_1_unsigned = (uint8_t *) data_1;\
	uint8_t* data_2_unsigned = (uint8_t *) data_2;\
	int b = bit;\
	int tail = 16-b;\
	_Pragma("omp parallel")\
	{\
		manage_thread_affinity(); \
		int this_thread = omp_get_thread_num();	\
		_Pragma("omp for")\
		for (uint64_t i=0 ; i<L_data ; i++)\
		{\
			to_hist_middleman_pragma( this_thread , ((data_1_unsigned[i]>>tail)<< b) + (data_2_unsigned[i]>>tail) );\
		}\
	}\
	reduction_and_reset();\
}


#define ACCUMULATE(BIN_TYPE)\
	ACCUMULATE_FLOAT(BIN_TYPE,double) ;\
	ACCUMULATE_FLOAT(BIN_TYPE,float) ;\
	ACCUMULATE_UINT(BIN_TYPE) ;\
	ACCUMULATE_INT(BIN_TYPE) ;

ACCUMULATE(uint64_t);
ACCUMULATE(uint32_t);

#undef ACCUMULATE_FLOAT
#undef ACCUMULATE_UINT
#undef ACCUMULATE

template<class BinType,class DataType>
template<class UnsignedType,class Enable>
void Histogram2D<BinType,DataType>::swap()
{
	const uint halfsize = 1<<(bit-1);
	Multi_array<BinType,2> tmp (halfsize,halfsize);
	for (uint j=0; j<halfsize; j++)
	{
		for (uint i=0; i<halfsize; i++)
		{
			tmp(j,i) = histogram(j,i);
			histogram(j,i) = histogram(j+halfsize,i+halfsize);
			histogram(j+halfsize,i+halfsize) = tmp(j,i) ;
		}
	}
	for (uint j=0; j<halfsize; j++)
	{
		for (uint i=0; i<halfsize; i++)
		{
			tmp(j,i) = histogram(j,i+halfsize);
			histogram(j,i+halfsize) = histogram(j+halfsize,i);
			histogram(j+halfsize,i) = tmp(j,i) ;
		}
	}
}

/////////////////////////
// Histogram2D properties
/////////////////////////

template<class BinType,class DataType>
template<class AbscisseType>
double Histogram2D<BinType,DataType>::moment( AbscisseType* bins ,  uint exp_x  , uint exp_y , int n_threads )
{
	uint64_t n_total = ::moment( histogram.get_ptr() , bins , nofbins , 0 , 0 , 1 , n_threads ) ;
    return ::moment(histogram.get_ptr() , bins, nofbins, exp_x , exp_y , n_total , n_threads );
}

template<class BinType,class DataType>
template<class AbscisseType>
double Histogram2D<BinType,DataType>::moment( AbscisseType* bins ,  uint exp_x  , uint exp_y , uint64_t n_total , int n_threads )
{
    return ::moment(histogram.get_ptr(), bins, nofbins, exp_x , exp_y , n_total , n_threads );
}

template<class BinType,class DataType>
template<class AbscisseType>
double Histogram2D<BinType,DataType>::moment_no_clip( AbscisseType* bins ,  uint exp_x  , uint exp_y , int n_threads )
{
	uint64_t n_total = ::moment( histogram.get_ptr() , bins , nofbins , 0 , 0 , 1 , n_threads ) ;
    return ::moment(histogram.get_ptr() , bins, nofbins, exp_x , exp_y , n_total , n_threads );
}

template<class BinType,class DataType>
template<class AbscisseType>
double Histogram2D<BinType,DataType>::moment_no_clip( AbscisseType* bins ,  uint exp_x  , uint exp_y , uint64_t n_total , int n_threads )
{
    return ::moment(histogram.get_ptr(), bins, nofbins, exp_x , exp_y , n_total , n_threads );
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
	accumulate( (AccumulateType*)buf_1.ptr, (AccumulateType*)buf_2.ptr , L_data );
}

template<class BinType,class Datatype>
template<class AbscisseType>
double Histogram2D<BinType,Datatype>::moment_py( py::array_t<AbscisseType> bins , uint exp_x  , uint exp_y , int n_threads )
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
	return moment( (AbscisseType*)buf.ptr , exp_x , exp_y , n_threads );
}

template<class BinType,class Datatype>
template<class AbscisseType>
double Histogram2D<BinType,Datatype>::moment_py( py::array_t<AbscisseType> bins , uint exp_x  , uint exp_y , uint64_t n_total , int n_threads )
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
	return moment( (AbscisseType*)buf.ptr , exp_x , exp_y , n_total , n_threads );
}

template<class BinType,class Datatype>
template<class AbscisseType>
double Histogram2D<BinType,Datatype>::moment_no_clip_py( py::array_t<AbscisseType> bins , uint exp_x  , uint exp_y , int n_threads )
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
	return moment_no_clip( (AbscisseType*)buf.ptr , exp_x , exp_y , n_threads );
}

template<class BinType,class Datatype>
template<class AbscisseType>
double Histogram2D<BinType,Datatype>::moment_no_clip_py( py::array_t<AbscisseType> bins , uint exp_x  , uint exp_y , uint64_t n_total , int n_threads )
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
	return moment_no_clip( (AbscisseType*)buf.ptr , exp_x , exp_y , n_total , n_threads );
}


template<class BinType,class Datatype>
py::array_t<double> Histogram2D<BinType,Datatype>::abscisse_py( double max )
{
	double bin_width = 2.0*max/( nofbins );
	Multi_array<double,1> abscisse(nofbins) ;	
    for(uint64_t i = 0; i < nofbins; i++)
    {
        abscisse[i] = ( (i + 0.5)*bin_width )- max ; 
    }
	return abscisse.move_py();
}