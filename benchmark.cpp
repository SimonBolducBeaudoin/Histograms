/* 
	Comment template definition before compiling benchmark
	and link to histogram.o and histogram2D.o
*/
#include <histogram.h> 
#include <histogram2D.h> 
#include <benchmark/benchmark.h>
#include <random>
// see : https://en.cppreference.com/w/cpp/numeric/random/uniform_int_distribution
#include <type_traits>

/*
How to use the benchmark :
	- simple call in cygwin : ./benchmark.exe will run the benchark and display the result in the console
	Options
	- Showing custom counter in individual colums : --benchmark_counters_tabular=true
	- Repetitions : --benchmark_repetitions=4
		Ex: repeats the experiment 4 times
		Statistics will automatically be showned
	- Output files : --benchmark_out=<filename> --benchmark_out_format={json|console|csv}
	- Running a subset of benchmarks : --benchmark_filter=<regex>
		Ex :
			+ Running all 1D histogram : --benchmark_filter=Histogram1D
			+ Running all 2D histogram : --benchmark_filter=Histogram2D
*/

template
<
	class DataType ,
	std::enable_if_t< std::is_unsigned<DataType>::value , int > = 0
>
DataType* make_rand( uint64_t size )
{
	std::random_device rd;  
    std::mt19937 gen(rd());
	std::uniform_int_distribution<int> distrib(0, (1<<sizeof(DataType)*8) -1 );
	DataType* x = (DataType*) malloc(size*sizeof(DataType));
	for(unsigned int i = 0 ; i < size ; i++)
	{
		x[i] = distrib(gen);
	}
	return x ; // Dont forget to deallocate
}

template
<
	class DataType ,
	std::enable_if_t< std::is_floating_point<DataType>::value , int > = 0
>
DataType* make_rand( uint64_t size )
{
	std::random_device rd;  
    std::mt19937 gen(rd());
	std::normal_distribution<DataType> distrib( 0.0, 1.0 );
	DataType* x = (DataType*) malloc(size*sizeof(DataType));
	for(unsigned int i = 0 ; i < size ; i++)
	{
		x[i] = distrib(gen);
	}
	return x ; // Dont forget to deallocate
}

template
<
	class Bintype,
	class DataType,
	std::enable_if_t< std::is_same<DataType,uint8_t>::value , int > = 0
>
static void Histogram1D_accumulate(benchmark::State& state)
{
	int n_threads = state.range(0) ;
	uint64_t l_data = state.range(1) ;
	DataType* data = make_rand<DataType>(l_data) ;	
	Histogram<Bintype,DataType> h (n_threads) ;
	
	for (auto _ : state)
	{
		h.accumulate(data,l_data);
	}
	free(data) ;
	
	state.counters["n_threads"] = n_threads ;
	state.counters["l_data [Sa]"] =  l_data ;
	state.counters["Sa/Sec"] = benchmark::Counter(l_data*state.iterations(), benchmark::Counter::kIsRate);
}

template
<
	class Bintype,
	class DataType,
	std::enable_if_t< std::is_same<DataType,uint16_t>::value , int> = 0
>
static void Histogram1D_accumulate(benchmark::State& state)
{
	int n_threads = state.range(0) ;
	uint64_t l_data = state.range(1) ;
	DataType* data = make_rand<DataType>(l_data) ;	
	Histogram<Bintype,DataType> h (n_threads,10) ;
	
	for (auto _ : state)
	{
		h.accumulate(data,l_data);
	}
	free(data) ;
	
	state.counters["n_threads"] = n_threads ;
	state.counters["l_data [Sa]"] =  l_data ;
	state.counters["Sa/Sec"] = benchmark::Counter(l_data*state.iterations(), benchmark::Counter::kIsRate);
}

template
<
	class Bintype,
	class DataType,
	std::enable_if_t< std::is_floating_point<DataType>::value , int> = 0
>
static void Histogram1D_accumulate(benchmark::State& state)
{
	int n_threads = state.range(0) ;
	uint64_t l_data = state.range(1) ;
	uint nofbins = state.range(2) ;
	DataType* data = make_rand<DataType>(l_data) ;
	DataType max = 4.0 ;
	Histogram<Bintype,DataType> h (nofbins,n_threads,max) ;
	for (auto _ : state)
	{
		h.accumulate(data,l_data);
	}
	free(data) ;
	
	state.counters["n_threads"] = n_threads ;
	state.counters["l_data [Sa]"] =  l_data ;
	state.counters["nofbins"] = nofbins ;
	state.counters["Sa/Sec"] = benchmark::Counter(l_data*state.iterations(), benchmark::Counter::kIsRate);
}

template
<
	class Bintype,
	class DataType,
	std::enable_if_t< std::is_same<DataType,uint8_t>::value , int > = 0
>
static void Histogram2D_accumulate(benchmark::State& state)
{
	int n_threads = state.range(0) ;
	uint64_t l_data = state.range(1) ;
	DataType* data_1 = make_rand<DataType>(l_data) ;	
	DataType* data_2 = make_rand<DataType>(l_data) ;	
	Histogram2D<Bintype,DataType> h (n_threads) ;
	
	for (auto _ : state)
	{
		h.accumulate(data_1,data_2,l_data);
	}
	free(data_1) ;
	free(data_2) ;
	
	state.counters["n_threads"] = n_threads ;
	state.counters["l_data [Sa]"] =  l_data ;
	state.counters["Sa/Sec"] = benchmark::Counter(l_data*state.iterations(), benchmark::Counter::kIsRate);
}

template
<
	class Bintype,
	class DataType,
	std::enable_if_t< std::is_same<DataType,uint16_t>::value , int> = 0
>
static void Histogram2D_accumulate(benchmark::State& state)
{
	int n_threads = state.range(0) ;
	uint64_t l_data = state.range(1) ;
	DataType* data_1 = make_rand<DataType>(l_data) ;	
	DataType* data_2 = make_rand<DataType>(l_data) ;	
	Histogram2D<Bintype,DataType> h (n_threads,10) ;
	
	for (auto _ : state)
	{
		h.accumulate(data_1,data_2,l_data);
	}
	free(data_1) ;
	free(data_2) ;
	
	state.counters["n_threads"] = n_threads ;
	state.counters["l_data [Sa]"] =  l_data ;
	state.counters["Sa/Sec"] = benchmark::Counter(l_data*state.iterations(), benchmark::Counter::kIsRate);
}

template
<
	class Bintype,
	class DataType,
	std::enable_if_t< std::is_floating_point<DataType>::value , int> = 0
>
static void Histogram2D_accumulate(benchmark::State& state)
{
	int n_threads = state.range(0) ;
	uint64_t l_data = state.range(1) ;
	uint nofbins = state.range(2) ;
	DataType* data_1 = make_rand<DataType>(l_data) ;
	DataType* data_2 = make_rand<DataType>(l_data) ;
	DataType max = 4.0 ;
	Histogram2D<Bintype,DataType> h (nofbins,n_threads,max) ;
	for (auto _ : state)
	{
		h.accumulate(data_1,data_2,l_data);
	}
	free(data_1) ;
	free(data_2) ;
	
	state.counters["n_threads"] = n_threads ;
	state.counters["l_data [Sa]"] =  l_data ;
	state.counters["nofbins"] = nofbins ;
	state.counters["Sa/Sec"] = benchmark::Counter(l_data*state.iterations(), benchmark::Counter::kIsRate);
}

template
<
	class DataType ,
	std::enable_if_t< std::is_unsigned<DataType>::value , int > = 0
>
static void CustomArguments(benchmark::internal::Benchmark* b) 
{
	int I[] = {1,6,12}; //length 2
	int J[] = {1<<24}; //length 1
	for (int i = 0; i < 3; ++i) for (int j = 0; j < 1; ++j ) 
		b->Args({I[i], J[j]});
}

template
<
	class DataType ,
	std::enable_if_t< std::is_floating_point<DataType>::value , int > = 0
>
static void CustomArguments(benchmark::internal::Benchmark* b) 
{
	int I[] = {1,6,12}; //length 7
	int J[] = {1<<24}; //length 1
	int K[] = {1<<8,1<<10,1<<12}; //length 1
	for (int i = 0; i < 3; ++i) for (int j = 0; j < 1; ++j ) for (int k = 0; k < 3; ++k )
		b->Args({I[i], J[j], K[k]});
}

#define BENCHMARK_ARGS(DataType) \
	UseRealTime()\
	->\
		Apply(CustomArguments<DataType>)\
	->\
		ComputeStatistics ( "max", [](const std::vector<double>& v) -> double { return *(std::max_element(std::begin(v), std::end(v))); } )\
	->\
		ComputeStatistics ( "min", [](const std::vector<double>& v) -> double { return *(std::min_element(std::begin(v), std::end(v))); } )

// BENCHMARK_TEMPLATE(Histogram1D_accumulate,uint64_t	,double		)->BENCHMARK_ARGS(double);
// BENCHMARK_TEMPLATE(Histogram1D_accumulate,uint32_t	,double		)->BENCHMARK_ARGS(double);
// BENCHMARK_TEMPLATE(Histogram1D_accumulate,uint64_t	,float		)->BENCHMARK_ARGS(float);
// BENCHMARK_TEMPLATE(Histogram1D_accumulate,uint32_t	,float		)->BENCHMARK_ARGS(float);
// BENCHMARK_TEMPLATE(Histogram1D_accumulate,uint64_t	,uint8_t	)->BENCHMARK_ARGS(uint8_t);
// BENCHMARK_TEMPLATE(Histogram1D_accumulate,uint32_t	,uint8_t	)->BENCHMARK_ARGS(uint8_t);
// BENCHMARK_TEMPLATE(Histogram1D_accumulate,uint64_t	,uint16_t	)->BENCHMARK_ARGS(uint16_t);
// BENCHMARK_TEMPLATE(Histogram1D_accumulate,uint32_t	,uint16_t	)->BENCHMARK_ARGS(uint16_t);

BENCHMARK_TEMPLATE(Histogram2D_accumulate,uint64_t	,double		)->BENCHMARK_ARGS(double);
BENCHMARK_TEMPLATE(Histogram2D_accumulate,uint32_t	,double		)->BENCHMARK_ARGS(double);
BENCHMARK_TEMPLATE(Histogram2D_accumulate,uint64_t	,float		)->BENCHMARK_ARGS(float);
BENCHMARK_TEMPLATE(Histogram2D_accumulate,uint32_t	,float		)->BENCHMARK_ARGS(float);
BENCHMARK_TEMPLATE(Histogram2D_accumulate,uint64_t	,uint8_t	)->BENCHMARK_ARGS(uint8_t);
BENCHMARK_TEMPLATE(Histogram2D_accumulate,uint32_t	,uint8_t	)->BENCHMARK_ARGS(uint8_t);
BENCHMARK_TEMPLATE(Histogram2D_accumulate,uint64_t	,uint16_t	)->BENCHMARK_ARGS(uint16_t);
BENCHMARK_TEMPLATE(Histogram2D_accumulate,uint32_t	,uint16_t	)->BENCHMARK_ARGS(uint16_t);

#undef BENCHMARK_ARGS

BENCHMARK_MAIN();
























