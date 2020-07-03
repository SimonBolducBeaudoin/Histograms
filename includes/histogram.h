#pragma once

#include <omp_extra.h>
#include <Multi_array.h>
#include <moments_cumulants.h>
#include <type_traits>

/*
	TODOS
	- Quality of life : add a function that recovers 1D histograms from 2D histogram ?
	- integrate Multi_array into histogram classes for better memory locality
	- Modify Multi_array for custom memory organisation (optimal for centered biased histograms)
*/


/*
# Uncomment to benchmark
*/
//#include "../../SM-Scoped_timer/includes/scoped_timer.h"

/*
https://en.cppreference.com/w/cpp/language/template_specialization
https://en.cppreference.com/w/cpp/language/member_template#Member_function_templates
*/

template < class BinType , class DataType >
class Histogram
{		
	public : 
		template
		<
			class ConstructorType = DataType, 
			class Enable = typename std::enable_if_t< std::is_floating_point<ConstructorType>::value >
		>/*double, float*/
		Histogram( uint nofbins , int n_threads ,  ConstructorType max );
		
		template
		<	/*uint8_t, int8_t, uint16_t, int16_t*/
			class ConstructorType = DataType, 
			class Enable = typename std::enable_if_t< std::is_integral<ConstructorType>::value>
		>
		Histogram( int n_threads );
		
		template
		<	/*uint8_t, int8_t, uint16_t, int16_t*/
			class ConstructorType = DataType, 
			class Enable = typename std::enable_if_t< std::is_integral<ConstructorType>::value>
		>
		Histogram( int n_threads , uint bit );
        
		// C++ INTERFACE
            // Core functions
		template<class AccumulateType=DataType>
		void accumulate( AccumulateType* data, uint64_t L_data ) ;
        
            // Sets and gets
		uint get_nofbins(){return nofbins ;};
        
            // Histogram properties
		template<class AbscisseType=DataType>
        double moment( AbscisseType* bins , uint exp , int n_threads = 6 );
		template<class AbscisseType=DataType>
        double moment( AbscisseType* bins , uint exp , uint64_t n_total , int n_threads = 6 );
        
        template<class AbscisseType=DataType>
        double moment_no_clip( AbscisseType* bins , uint exp , int n_threads = 6 );
		template<class AbscisseType=DataType>
        double moment_no_clip( AbscisseType* bins , uint exp , uint64_t n_total , int n_threads = 6 );
        		
        // Python interface         
            // Core functions
        template<class AccumulateType=DataType>
		void accumulate_py( py::array_t<AccumulateType> data ) ;
		
		template
		<	/*uint8_t, int8_t, uint16_t, int16_t*/
			class UnsignedType = DataType, 
			class Enable = typename std::enable_if_t<std::is_integral<UnsignedType>::value>
		>
		void swap();
        
        uint64_t how_much_clip();
        
		template<class AbscisseType=DataType>
		double moment_py( py::array_t<AbscisseType> bins , uint exp , int n_threads );
		template<class AbscisseType=DataType>
        double moment_py( py::array_t<AbscisseType> bins , uint exp , uint64_t n_total , int n_threads );
        
        template<class AbscisseType=DataType>
		double moment_no_clip_py( py::array_t<AbscisseType> bins , uint exp , int n_threads );
		template<class AbscisseType=DataType>
        double moment_no_clip_py( py::array_t<AbscisseType> bins , uint exp , uint64_t n_total , int n_threads );
		
            // Sets and gets
		py::array_t<BinType> share_py(){ return histogram.share_py(); };
        py::array_t<double> abscisse_py( double max );
		
	protected :
		uint nofbins ;
		int n_threads ;
		
		Multi_array<BinType,1> histogram ;
		
		DataType max ; // Defines the window for accumulation of floats (used only when DataType = floats)
		uint bit ; // The bitshift that is made on data when accumulating uint16_t DataType (used only when DataType = uint16_t)
		
		// Checks
		void Checks() ;
		void Check_n_threads() ;
        
        // C++ INTERFACE
            // Core functions
		template<class FloatType>
		void float_to_hist(FloatType data, BinType* histogram , FloatType max , FloatType bin_width );		
		
};

#include "../src/histogram.tpp"
