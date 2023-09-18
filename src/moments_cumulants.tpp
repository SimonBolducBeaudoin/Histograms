/*
	Cannot do partial template specialization for function, see : https://en.wikipedia.org/wiki/Partial_template_specialization
	
	Can only do full specialization
	Therefore I'll be doing full specialisation using macros for compactness
*/

template <class BinType,class AbscisseType>
std::vector<double> std_moments(BinType* histogram, AbscisseType* bins , uint n_bins , uint order , bool no_clip )
{
    /*
    Computes all 1D standardize moments up to order.
    Order cannot be < 2
    The 3 first elements are [n_total,<x>, <x^2> - <x>^2, ]
    The following elements are standardized moments
    By default the first and last bin are not used no_clip = True
    */
    uint first_bin  = no_clip ? 1         : 0       ;
    uint last_bin   = no_clip ? n_bins -1 : n_bins  ;
    
    std::vector<double> moments(order+1,0.0);
		
    for (uint i=first_bin; i<last_bin; i++)
    {
        moments[0] += histogram[i] ; //n_total
        moments[1] += histogram[i] * bins[i] ;        // sum
        moments[2] += histogram[i] * bins[i]*bins[i]; // sum square
    }
    
    moments[1] /= moments[0] ;// normalise
    moments[2] /= moments[0] ;// normalise
    moments[2] -= moments[1]*moments[1] ; //<x^2> - <x>^2
    
    // standard moments
    double x_bar = moments[1] ;

    for (uint i = 3; i <= order ; i++ ){
    for (uint j=first_bin; j<last_bin; j++)
    {
            moments[i] += histogram[j] * pow(bins[j]-x_bar, i) ; // <(x - <x>)^i>
    }}
    
    // normalisation
    for (uint i = 3; i <= order ; i++ ){  moments[i] /= moments[0] ; }
    // Standardisation
    for (uint i = 3; i <= order ; i++ )
    {
        moments[i] /= pow( moments[2], ((double) i) /2.0 ) ; 
    }
   
    return moments;
}

template <class BinType,class AbscisseType>
double moment(BinType* histogram, AbscisseType* bins , uint n_bins , uint exp , uint64_t n_total , bool no_clip )
{
    double val = 0;
    uint first_bin  = no_clip ? 1         : 0       ;
    uint last_bin   = no_clip ? n_bins -1 : n_bins  ;

    for (uint i=first_bin; i<last_bin; i++)
    {
        val += histogram[i] * pow(bins[i], exp);
    }
    
    return val/n_total;
}

template <class BinType,class AbscisseType>
double centered_moment(BinType* histogram, AbscisseType* bins , uint n_bins , uint exp , uint64_t n_total  , bool no_clip )
{
    double val = 0;
    uint first_bin  = no_clip ? 1         : 0       ;
    uint last_bin   = no_clip ? n_bins -1 : n_bins  ;
    AbscisseType x_bar = moment(histogram,bins,n_bins,1,n_total,no_clip) ;
	
    for (uint i=first_bin; i<last_bin; i++)
    {
        val += histogram[i] * pow(bins[i]-x_bar, exp);
    }

    return val/n_total;
}

template <class BinType,class AbscisseType>
double moment(BinType* histogram , AbscisseType* bins , uint n_bins , uint exp_x , uint exp_y , uint64_t n_total , int n_threads , bool no_clip )
{
	omp_set_num_threads(n_threads);
	double val = 0;
    uint first_bin  = no_clip ? 1         : 0       ;
    uint last_bin   = no_clip ? n_bins -1 : n_bins  ;
	#pragma omp parallel
	{
		manage_thread_affinity();
		double val_local = 0 ;
		double y_power = 0;
		#pragma omp for
		for (uint j=first_bin; j<last_bin; j++)
		{
			y_power = pow(bins[j], exp_y);
			for (uint i=first_bin; i<last_bin; i++)
			{
				val_local += histogram[n_bins*j + i] * pow(bins[i], exp_x) * y_power;
			}
		}
	#pragma omp atomic update
	val += val_local;
	}
    return val/n_total;
}

template <class BinType,class AbscisseType>
double centered_moment(BinType* histogram , AbscisseType* bins , uint n_bins , uint exp_x , uint exp_y , uint64_t n_total , int n_threads , bool no_clip )
{
	omp_set_num_threads(n_threads);
	double val = 0;
    uint first_bin  = no_clip ? 1         : 0       ;
    uint last_bin   = no_clip ? n_bins -1 : n_bins  ;
    AbscisseType x_bar = moment(histogram,bins,n_bins,1,0,n_total,n_threads,no_clip) ;
    AbscisseType y_bar = moment(histogram,bins,n_bins,0,1,n_total,n_threads,no_clip) ;
	#pragma omp parallel
	{
		manage_thread_affinity();
		double val_local = 0 ;
		double y_power = 0;
		#pragma omp for
		for (uint j=first_bin; j<last_bin; j++)
		{
			y_power = pow(bins[j]-y_bar, exp_y);
			for (uint i=first_bin; i<last_bin; i++)
			{
				val_local += histogram[n_bins*j + i] * pow(bins[i]- x_bar, exp_x) * y_power;
			}
		}
	#pragma omp atomic update
	val += val_local;
	}
    return val/n_total;
}










