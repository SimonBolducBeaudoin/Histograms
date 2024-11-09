/*
        Cannot do partial template specialization for function, see :
   https://en.wikipedia.org/wiki/Partial_template_specialization
        Can only do full specialization
        Therefore I'll be doing full specialisation using macros for compactness
*/

template <class BinType, class AbscisseType>
std::vector<double> std_moments(BinType *histogram, AbscisseType *bins, uint n_bins, uint order,
                                bool no_clip) {
    /*
    Computes all 1D standardize moments up to order.
    Order cannot be < 2
    The 3 first elements are [n_total,<x>, <x^2> - <x>^2, ]
    The following elements are standardized moments
    By default the first and last bin are not used no_clip = True
    */
    uint first_bin = no_clip ? 1 : 0;
    uint last_bin = no_clip ? n_bins - 1 : n_bins;

    std::vector<double> moments(order + 1, 0.0);

    for (uint i = first_bin; i < last_bin; i++) {
        moments[0] += histogram[i];                     // n_total
        moments[1] += histogram[i] * bins[i];           // sum
        moments[2] += histogram[i] * bins[i] * bins[i]; // sum square
    }

    moments[1] /= moments[0];              // normalise
    moments[2] /= moments[0];              // normalise
    moments[2] -= moments[1] * moments[1]; //<x^2> - <x>^2

    // standard moments
    double x_bar = moments[1];

    for (uint i = 3; i <= order; i++) {
        for (uint j = first_bin; j < last_bin; j++) {
            moments[i] += histogram[j] * pow(bins[j] - x_bar, i); // <(x - <x>)^i>
        }
    }

    // normalisation
    for (uint i = 3; i <= order; i++) {
        moments[i] /= moments[0];
    }
    // Standardisation
    for (uint i = 3; i <= order; i++) {
        moments[i] /= pow(moments[2], ((double)i) / 2.0);
    }

    return moments;
}

template <class BinType, class AbscisseType>
Multi_array<double, 2> std_2Dmoments(Multi_array<BinType, 2>& histogram, Multi_array<AbscisseType, 1>& binx, Multi_array<AbscisseType, 1>& biny, uint n_bins, uint order) {
    /*Order as to be bigger or equal to 2*/
    /*Always removing clip*/
    uint i_start = 1 ;
    uint l_stop = n_bins - 1 ;
    uint len = order + 1 ;

    Multi_array<double, 2> moments( len,len );
    Multi_array<double, 1> cbinx( n_bins );
    Multi_array<double, 1> cbiny( n_bins );
    Multi_array<double, 2> pbinx( len,n_bins );
    Multi_array<double, 2> pbiny( len,n_bins );  
    #pragma omp parallel
    {
        manage_thread_affinity();    
        // n_total
        uint64_t tot=0;
        
		#pragma omp for simd collapse(2)
        for (uint j = i_start; j < l_stop; j++) {
            for (uint i = i_start; i < l_stop; i++) {
                tot += histogram(j,i); 
            }
        }
		
        #pragma omp single
        {  
            moments(0,0)  = (double)tot; 
        }
        
        // Avg along x and y
        #pragma omp for simd collapse(2)
        for (uint j = i_start; j < l_stop; j++) {
            for (uint i = i_start; i < l_stop; i++) {
                moments(0,1) += histogram(j,i)*binx[i];
                moments(1,0) += histogram(j,i)*biny[i]; 
            }
        }
		
        #pragma omp single
        {
            moments(0,1)/=tot;
            moments(1,0)/=tot;
        }
        
        
        // Centering bins
        #pragma omp for simd
        for (uint i = 0; i < n_bins; i++) {
            cbinx[i] = binx[i]-moments(0,1);
            cbiny[i] = biny[i]-moments(1,0);
        }
        
        // Power of bins
        // #define INT_POW(x, n) ( (n) == 0 ? 1 : ( (n) == 1 ? (x) : ((x) * INT_POW((x), (n) - 1)) ) )  
        #pragma omp for simd collapse(2)
        for (uint l = 0; l < len; l++) {
            for (uint i = 0; i < n_bins; i++) {
                pbinx(l,i) = pow(cbinx[i], (int)l ); 
                pbiny(l,i) = pow(cbiny[i], (int)l );
            }
        } 
			
        // Moments up to order 2
        #pragma omp for simd collapse(2)
        for (uint j = i_start; j < l_stop; j++) {
            for (uint i = i_start; i < l_stop; i++) {
                moments(1,1) += histogram(j,i)*pbiny(1,i)*pbinx(1,i);
                moments(0,2) += histogram(j,i)           *pbinx(2,i);
                moments(2,0) += histogram(j,i)*pbiny(2,i)           ;
                moments(2,1) += histogram(j,i)*pbiny(2,i)*pbinx(1,i);
                moments(1,2) += histogram(j,i)*pbiny(1,i)*pbinx(2,i);
                moments(2,2) += histogram(j,i)*pbiny(1,i)*pbinx(2,i);
            }
        }
        
        #pragma omp single
        {
            moments(1,1) /=tot;
            moments(0,2) /=tot;
            moments(2,0) /=tot;
            moments(2,1) /=tot;
            moments(1,2) /=tot;
            moments(2,2) /=tot;
        }
        
        #pragma omp for simd collapse(4) nowait
        for (uint oy = 3; oy < len; oy++) {
            for (uint ox = 0; ox < 3; ox++) {
                for (uint j = i_start; j < l_stop; j++) {
                    for (uint i = i_start; i < l_stop; i++) {
                        moments(oy,ox) += histogram(j,i)*pbiny(oy,i)*pbinx(ox,i);
                    }
                }
            }
        }
        #pragma omp for simd collapse(4)
        for (uint oy = 0; oy < len; oy++) {
            for (uint ox = 3; ox < len ; ox++) {
                for (uint j = i_start; j < l_stop; j++) {
                    for (uint i = i_start; i < l_stop; i++) {
                        moments(oy,ox) += histogram(j,i)*pbiny(oy,i)*pbinx(ox,i);
                    }
                }
            }
        }
        
        #pragma omp for simd collapse(2) nowait
        for (uint oy = 3; oy < len; oy++) {
            for (uint ox = 0; ox < 3; ox++) {
                moments(oy,ox) /= (moments(0,0) * pow(moments(2,0),(0.5*oy)) * pow(moments(0,2),(0.5*ox)) ) ;
            }
        }
		
        #pragma omp for simd collapse(2) nowait
        for (uint oy = 0; oy < len; oy++) {
            for (uint ox = 3; ox < len ; ox++) {
                moments(oy,ox) /= (moments(0,0) * pow(moments(2,0),(0.5*oy)) * pow(moments(0,2),(0.5*ox)) ) ;
            }
        }
		
    }
	
    return moments;
}

template <class BinType, class AbscisseType>
double moment(BinType *histogram, AbscisseType *bins, uint n_bins, uint exp, uint64_t n_total, bool no_clip) {
    double val = 0;
    uint first_bin = no_clip ? 1 : 0;
    uint last_bin = no_clip ? n_bins - 1 : n_bins;

    for (uint i = first_bin; i < last_bin; i++) {
        val += histogram[i] * pow(bins[i], exp);
    }

    return val / n_total;
}

template <class BinType, class AbscisseType>
double centered_moment(BinType *histogram, AbscisseType *bins, uint n_bins, uint exp, uint64_t n_total,
                       bool no_clip) {
    double val = 0;
    uint first_bin = no_clip ? 1 : 0;
    uint last_bin = no_clip ? n_bins - 1 : n_bins;
    AbscisseType x_bar = moment(histogram, bins, n_bins, 1, n_total, no_clip);

    for (uint i = first_bin; i < last_bin; i++) {
        val += histogram[i] * pow(bins[i] - x_bar, exp);
    }

    return val / n_total;
}

template <class BinType, class AbscisseType>
double moment(BinType *histogram, AbscisseType *bins, uint n_bins, uint exp_x, uint exp_y, uint64_t n_total,
              int n_threads, bool no_clip) {
    omp_set_num_threads(n_threads);
    double val = 0;
    uint first_bin = no_clip ? 1 : 0;
    uint last_bin = no_clip ? n_bins - 1 : n_bins;
#pragma omp parallel
    {
        manage_thread_affinity();
        double val_local = 0;
        double y_power = 0;
#pragma omp for
        for (uint j = first_bin; j < last_bin; j++) {
            y_power = pow(bins[j], exp_y);
            for (uint i = first_bin; i < last_bin; i++) {
                val_local += histogram[n_bins * j + i] * pow(bins[i], exp_x) * y_power;
            }
        }
#pragma omp atomic update
        val += val_local;
    }
    return val / n_total;
}

template <class BinType, class AbscisseType>
double centered_moment(BinType *histogram, AbscisseType *bins, uint n_bins, uint exp_x, uint exp_y,
                       uint64_t n_total, int n_threads, bool no_clip) {
    omp_set_num_threads(n_threads);
    double val = 0;
    uint first_bin = no_clip ? 1 : 0;
    uint last_bin = no_clip ? n_bins - 1 : n_bins;
    AbscisseType x_bar = moment(histogram, bins, n_bins, 1, 0, n_total, n_threads, no_clip);
    AbscisseType y_bar = moment(histogram, bins, n_bins, 0, 1, n_total, n_threads, no_clip);
#pragma omp parallel
    {
        manage_thread_affinity();
        double val_local = 0;
        double y_power = 0;
#pragma omp for
        for (uint j = first_bin; j < last_bin; j++) {
            y_power = pow(bins[j] - y_bar, exp_y);
            for (uint i = first_bin; i < last_bin; i++) {
                val_local += histogram[n_bins * j + i] * pow(bins[i] - x_bar, exp_x) * y_power;
            }
        }
#pragma omp atomic update
        val += val_local;
    }
    return val / n_total;
}
