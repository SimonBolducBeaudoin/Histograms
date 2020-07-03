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
			class Enable = typename std::enable_if_t<std::is_floating_point<ConstructorType>::value >
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
		
		~Histogram2D();
		
        // C++ INTERFACE
            // Core functions
		template<class AccumulateType=DataType>
		void accumulate(  AccumulateType* data_1 , AccumulateType* data_2 , uint64_t L_data ) ;
		// Did not implement methods for int8 and int16
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
        
	protected :
		uint nofbins ;
		int n_threads ;
		Multi_array<BinType,2> histogram ;
		uint8_t** hs ;
		
		DataType max ; // Defines the window for accumulation of floats (used only when DataType = floats)
		int bit ; // The bitshift that is made on data when accumulating uint16_t DataType (used only when DataType = uint16_t)
		
		// Checks
		void Checks() ;
		void Check_n_threads() ;

        // C++ INTERFACE
		void Allocate_all_heap();
		void Free_all_heap();
	
            // Core functions
		void to_hist_middleman_pragma( int this_thread , uint32_t bin );
		void reduction_and_reset();
		
		template<class FloatType>
		void what_bin_float( FloatType data_1 , FloatType data_2, FloatType max, FloatType bin_width, uint16_t* binx, uint16_t* biny) ;
};

#include "../src/histogram2D.tpp"