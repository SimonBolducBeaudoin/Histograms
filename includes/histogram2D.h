#pragma once

#include <omp_extra.h>
#include <Multi_array.h>
// #include <math_extra.h>
#include <moments_cumulants.h>
#include <type_traits>


/*
# Uncomment to benchmark
*/
//#include "../../SM-Scoped_timer/includes/scoped_timer.h"

/*
https://en.cppreference.com/w/cpp/language/template_specialization
https://en.cppreference.com/w/cpp/language/member_template#Member_function_templates
*/

template < class BinType , class DataType = uint >
class Histogram2D
{
	public : 
		
		template
		<
			class ConstructorType = DataType, 
			class Enable = typename std::enable_if_t<std::is_floating_point<ConstructorType>::value>
		>/*double, float*/
		Histogram2D( uint nofbins , int n_threads ,  ConstructorType max );
		
		template
		<	/*uint8_t, int8_t, uint16_t, int16_t*/
			class ConstructorType = DataType, 
			class Enable = typename std::enable_if_t<std::is_integral<ConstructorType>::value>
		>
		Histogram2D( int n_threads );
		
		template
		<	/*uint8_t, int8_t, uint16_t, int16_t*/
			class ConstructorType = DataType, 
			class Enable = typename std::enable_if_t<std::is_integral<ConstructorType>::value>
		>
		Histogram2D( int n_threads , uint bit );
		
        // C++ INTERFACE
            // Core functions
		template<class AccumulateType=DataType>
		void accumulate( AccumulateType* data_1 , AccumulateType* data_2 , uint64_t L_data ) ;
		
		void reset();
		
            // Sets and gets
		uint64_t get_nofbins(){return nofbins ;};
        
            // Histogram properties
		template<class AbscisseType=DataType>
        double moment( AbscisseType* bins , uint exp_x  , uint exp_y , int n_threads = 6 );
		template<class AbscisseType=DataType>
        double moment( AbscisseType* bins , uint exp_x  , uint exp_y  , uint64_t n_total , int n_threads = 6 );
       
        template<class AbscisseType=DataType>
        double moment_no_clip( AbscisseType* bins , uint exp_x  , uint exp_y , int n_threads = 6 );
		template<class AbscisseType=DataType>
        double moment_no_clip( AbscisseType* bins , uint exp_x  , uint exp_y  , uint64_t n_total , int n_threads = 6 );
		
        //  Python interface
            // Core functions
		template<class AccumulateType=DataType>
		void accumulate_py(  py::array_t<AccumulateType> data_1, py::array_t<AccumulateType> data_2 ) ;
		
		template
		<	/*uint8_t, int8_t, uint16_t, int16_t*/
			class UnsignedType = DataType, 
			class Enable = typename std::enable_if_t< std::is_integral<UnsignedType>::value>
		>
		void swap();
		
        uint64_t how_much_clip();
        
		template<class AbscisseType=DataType>
		double moment_py( py::array_t<AbscisseType> bins , uint exp_x  , uint exp_y , int n_threads );
		template<class AbscisseType=DataType>
        double moment_py( py::array_t<AbscisseType> bins , uint exp_x  , uint exp_y , uint64_t n_total , int n_threads  );
		
        template<class AbscisseType=DataType>
		double moment_no_clip_py( py::array_t<AbscisseType> bins , uint exp_x  , uint exp_y , int n_threads );
		template<class AbscisseType=DataType>
        double moment_no_clip_py( py::array_t<AbscisseType> bins , uint exp_x  , uint exp_y , uint64_t n_total , int n_threads  );
        
            // Sets and gets
		py::array_t<BinType> share_py(){ return histogram.share_py(); };

        py::array_t<double> abscisse_py( double max );
		
		uint64_t get_alloc_memory_size(){return histogram.get_alloc_memory_size() + hs.get_alloc_memory_size();};
        
	protected :
		uint nofbins ;
		int n_threads ;
		Multi_array<BinType,2> histogram ;
		Multi_array<uint8_t,3> hs ;
		
		DataType max ; // Defines the window for accumulation of floats (used only when DataType = floats)
		int bit ; // The bitshift that is made on data when accumulating uint16_t DataType (used only when DataType = uint16_t)
		
        // C++ INTERFACE
	
            // Core functions
		template<class FloatType>
		void compute_bins(FloatType data_1,FloatType data_2,FloatType max,FloatType bin_width,uint& biny,uint& binx) ;
		void to_middleman(int this_thread,uint biny,uint binx);
		template<class FloatType>
		void to_hs(FloatType data_y,FloatType data_x,FloatType max,FloatType bin_width,int this_thread) ;
	
		void reduction_and_reset_threads();
		void reset_threads();
};

#include "../src/histogram2D.tpp"