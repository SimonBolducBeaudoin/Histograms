#!/bin/env/python
#! -*- coding: utf-8 -*-
import numpy as _np
from SBB.Numpy_extra.numpy_extra import sub_flatten_no_copy as _sub_flatten_no_copy

import numba as _nb


"""
This module is intended to help with the use of SBB.Histogram.histograms

Last update
-----------
    added numba version of compute moments
Todos : 
Bugs :
"""

@_nb.guvectorize([(_nb.uint32[:],_nb.float64[:],_nb.uint64[:],_nb.uint64,_nb.float64[:])], '(n),(n),(m),()->(m)')
def std_moments_numba(histogram,x,order,Cx,res=None):
    no_clip=True
    first_bin = 1 if no_clip else 0
    last_bin  = len(x) - 1 if no_clip else len(x)
    x_slice   = slice(first_bin,last_bin)
    bins = x*Cx
    
    moments = _np.zeros(len(order), dtype=np.float64)
    
    moments[0] = histogram[x_slice].sum()
    moments[1] = (histogram[x_slice]* bins[x_slice]).sum() 
    moments[2] = (histogram[x_slice]* bins[x_slice]**2).sum()   # sum square
    
    moments[1] /= moments[0]  # normalize
    moments[2] /= moments[0]  # normalize
    moments[2] -= moments[1] * moments[1]  # <x^2> - <x>^2
    
    x_bar = moments[1]
    
    for i,o in enumerate(order[3:]):
        moments[i] = (histogram[x_slice]* (bins[x_slice] - x_bar)**o).sum()  # <(x - <x>)^o>
        
    # normalisation
    moments[3:] /= moments[0]
    # Standardisation
    moments[3:] /= moments[2] ** (order[3:] / 2.0)
    res[:] = moments

@_nb.guvectorize([(_nb.uint64[:],_nb.float64[:],_nb.uint64[:],_nb.uint64,_nb.float64[:])], '(n),(n),(m),()->(m)')
def std_moments_numba(histogram,x,order,Cx,res=None):
    no_clip=True
    first_bin = 1 if no_clip else 0
    last_bin  = len(x) - 1 if no_clip else len(x)
    x_slice   = slice(first_bin,last_bin)
    bins = x*Cx
    
    moments = _np.zeros(len(order), dtype=np.float64)
    
    moments[0] = histogram[x_slice].sum()
    moments[1] = (histogram[x_slice]* bins[x_slice]).sum() 
    moments[2] = (histogram[x_slice]* bins[x_slice]**2).sum()   # sum square
    
    moments[1] /= moments[0]  # normalize
    moments[2] /= moments[0]  # normalize
    moments[2] -= moments[1] * moments[1]  # <x^2> - <x>^2
    
    x_bar = moments[1]
    
    for i,o in enumerate(order[3:]):
        moments[i] = (histogram[x_slice]* (bins[x_slice] - x_bar)**o).sum()  # <(x - <x>)^o>
        
    # normalisation
    moments[3:] /= moments[0]
    # Standardisation
    moments[3:] /= moments[2] ** (order[3:] / 2.0)
    res[:] = moments
    
def compute_moments(Hs,x,order = 8,Cxs=None,implementation='C++_class'):
    if implementation == 'C++_class' :
        return compute_moments_cpp_class(Hs,x,order,Cxs)
    elif implementation == 'C++_class_par_threads' :
        return compute_moments_cpp_class_par(Hs,x,order,Cxs)
    elif implementation == 'numba' :
        if type(order) is int :
            order_tmp = _np.r_[:order]
        if order.shape[-1] < 3 :
            raise Exception("Order must be > 2")
        return compute_moments_numba(Hs,x,order,Cxs)
    else :
        raise Exception("No implementation chosen.")

def compute_moments_cpp_class_par(Hs,x,order = 8,Cxs=None):
    """
    Computes standardized moments directly from Histogram class
    see: SBB.Histogram.moments_cumulants import std_moments 
    
    Inputs
    ------
    Hs : _np array of 1D histograms objects
        Hs.shape  = (..., n )
    x  : _np array of the center for each bin (see: SBB.Histogram.Histogram_uint64_t_double.abscisse)
        x.shape = (n,)
    Cxs : _np array of corrections the abscisse for each kernel
        used to help with half normalisation
        Cxs.shape = Hs.shape[:-1]
    order : computing standardized moments up to this order
    """ 
    if not(Cxs):
        Cxs = _np.ones( Hs.shape[:-1] )
        
    def _moments(h,i,j,bins,order):
        moments[i,j,:] = h.std_moments(bins,order,no_clip=True)
        
    moments = _np.full( Hs.shape + (order+1,), _np.nan ) 
    ms_shape = _sub_flatten_no_copy(moments,axis=-2) # this function modifies the input's shape
    Hs_shape = _sub_flatten_no_copy(Hs,axis=-1)      # this function modifies the input's shape
    
    threads = [ threading.Thread(target= _moments , args = (h,i,j,x*Cx,order)) for i, (H,Cx) in enumerate( zip( Hs, Cxs.flat ) ) for j,h in enumerate(H)]        
    for th in threads :
        th.start()
    for th in threads :
        th.join()
    #Restore shapes
    Hs.shape = Hs_shape
    moments.shape = ms_shape
    return moments
    
def compute_moments_cpp_class(Hs,x,order = 8,Cxs=None):
    """
    Computes standardized moments directly from Histogram class
    see: SBB.Histogram.moments_cumulants import std_moments 
    
    Inputs
    ------
    Hs : _np array of 1D histograms objects
        Hs.shape  = (..., n )
    x  : _np array of the center for each bin (see: SBB.Histogram.Histogram_uint64_t_double.abscisse)
        x.shape = (n,)
    Cxs : _np array of corrections the abscisse for each kernel
        used to help with half normalisation
        Cxs.shape = Hs.shape[:-1]
    order : computing standardized moments up to this order
    """ 
    if Cxs is None :
        Cxs = _np.ones( Hs.shape[:-1] )
        
    moments = _np.full( Hs.shape + (order+1,), _np.nan ) 
    ms_shape = _sub_flatten_no_copy(moments,axis=-2) # this function modifies the input's shape
    Hs_shape = _sub_flatten_no_copy(Hs,axis=-1)      # this function modifies the input's shape
    for i, (H,Cx) in enumerate( zip( Hs, Cxs.flat ) ): 
        bins = x*Cx
        for j, h  in enumerate( H ) : 
            # Computes standardized moments up to order 
            moments[i,j,:] = h.std_moments(bins,order,no_clip=True)
    #Restore shapes
    Hs.shape = Hs_shape
    moments.shape = ms_shape
    return moments
   
def std_moments_to_moments(moments):
    for i in range(moments.shape[-1]):
        if i > 2 :
            moments[...,i] *= moments[...,2]**(float(i)/2.0)
    return moments