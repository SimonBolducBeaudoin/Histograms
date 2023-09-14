#include "histogram_py.h"
#include "git_version.h"

// CLASS MACROS		
#define PY_HISTOGRAM_FLOAT(BinType,FloatType)\
py::class_<Histogram<BinType,FloatType>>( m , "Histogram_"#BinType"_"#FloatType )\
	.def(py::init<uint,int,double>(), "nofbins"_a.noconvert() = 0,  "n_threads"_a.noconvert() , "max"_a = 1.0 )\
	.def("accumulate", &Histogram<BinType,FloatType>::accumulate_py<FloatType>, "data"_a.noconvert() )\
	.def("reset", &Histogram<BinType,FloatType>::reset)\
	.def("get", &Histogram<BinType,FloatType>::share_py)\
	.def_static("abscisse", &Histogram<BinType,FloatType>::abscisse_py, "max"_a.noconvert() , "nofbins"_a.noconvert() )\
    .def("std_moments",          (std::vector<double> (Histogram<BinType,FloatType>::*) (py::array_t<FloatType> , uint , bool) )            &Histogram<BinType,FloatType>::std_moments_py           , "bins"_a.noconvert() ,"order"_a , "no_clip"_a = false )\
    .def("how_much_clip", &Histogram<BinType,FloatType>::how_much_clip)\
    .def("get_alloc_memory_size", &Histogram<BinType,FloatType>::get_alloc_memory_size)\
	;
	
#define PY_HISTOGRAM_UINT(BinType,IntegerType)\
py::class_<Histogram<BinType,IntegerType>>( m , "Histogram_"#BinType"_"#IntegerType )\
	.def(py::init<int>(), "n_threads"_a.noconvert() )\
	.def(py::init<int,uint>(), "n_threads"_a.noconvert() , "bit"_a )\
	.def("accumulate", &Histogram<BinType,IntegerType>::accumulate_py<IntegerType>, "data"_a.noconvert()  )\
	.def("reset", &Histogram<BinType,IntegerType>::reset)\
	.def("get", &Histogram<BinType,IntegerType>::share_py)\
    .def("std_moments",(std::vector<double> (Histogram<BinType,IntegerType>::*) (py::array_t<IntegerType> , uint , bool) ) &Histogram<BinType,IntegerType>::std_moments_py , "bins"_a.noconvert() ,"order"_a , "no_clip"_a = false )\
	.def("how_much_clip", &Histogram<BinType,IntegerType>::how_much_clip)\
	.def("get_alloc_memory_size", &Histogram<BinType,IntegerType>::get_alloc_memory_size)\
    ;
	
#define PY_HISTOGRAM_INT(BinType,IntegerType)\
py::class_<Histogram<BinType,IntegerType>>( m , "Histogram_"#BinType"_"#IntegerType )\
	.def(py::init<int>(), "n_threads"_a.noconvert() )\
	.def(py::init<int,uint>(), "n_threads"_a.noconvert() , "bit"_a )\
	.def("accumulate", &Histogram<BinType,IntegerType>::accumulate_py<IntegerType>, "data"_a.noconvert()  )\
	.def("reset", &Histogram<BinType,IntegerType>::reset)\
	.def("get", &Histogram<BinType,IntegerType>::share_py)\
    .def("std_moments",(std::vector<double> (Histogram<BinType,IntegerType>::*) (py::array_t<IntegerType> , uint , bool) ) &Histogram<BinType,IntegerType>::std_moments_py , "bins"_a.noconvert() ,"order"_a , "no_clip"_a = false )\
    .def("how_much_clip", &Histogram<BinType,IntegerType>::how_much_clip)\
    .def("get_alloc_memory_size", &Histogram<BinType,IntegerType>::get_alloc_memory_size)\
	;

#define PY_HISTOGRAM2D_FLOAT(BinType,FloatType)\
py::class_<Histogram2D<BinType,FloatType>>( m , "Histogram2D_"#BinType"_"#FloatType )\
	.def(py::init<uint,int,double>(), "nofbins"_a.noconvert() , "n_threads"_a.noconvert() , "max"_a )\
	.def("accumulate", &Histogram2D<BinType,FloatType>::accumulate_py<FloatType>, "data_1"_a.noconvert(), "data_2"_a.noconvert() )\
	.def("reset", &Histogram2D<BinType,FloatType>::reset)\
	.def("get", &Histogram2D<BinType,FloatType>::share_py)\
	.def_static("abscisse", &Histogram2D<BinType,FloatType>::abscisse_py, "max"_a.noconvert() , "nofbins"_a.noconvert() )\
	.def("moment",          (double (Histogram2D<BinType,FloatType>::*) (py::array_t<FloatType> , uint , uint , int, bool) )           &Histogram2D<BinType,FloatType>::moment_py             , "bins"_a.noconvert() ,"exp_x"_a , "exp_y"_a ,                              "n_threads"_a ,  "no_clip"_a = false )\
	.def("moment",          (double (Histogram2D<BinType,FloatType>::*) (py::array_t<FloatType> , uint , uint , uint64_t , int, bool) )&Histogram2D<BinType,FloatType>::moment_py             , "bins"_a.noconvert() ,"exp_x"_a , "exp_y"_a , "n_total"_a.noconvert() ,    "n_threads"_a ,  "no_clip"_a = false )\
    .def("centered_moment", (double (Histogram2D<BinType,FloatType>::*) (py::array_t<FloatType> , uint , uint , int, bool) )           &Histogram2D<BinType,FloatType>::centered_moment_py    , "bins"_a.noconvert() ,"exp_x"_a , "exp_y"_a ,                              "n_threads"_a ,  "no_clip"_a = false )\
	.def("centered_moment", (double (Histogram2D<BinType,FloatType>::*) (py::array_t<FloatType> , uint , uint , uint64_t , int, bool) )&Histogram2D<BinType,FloatType>::centered_moment_py    , "bins"_a.noconvert() ,"exp_x"_a , "exp_y"_a , "n_total"_a.noconvert() ,    "n_threads"_a ,  "no_clip"_a = false )\
	.def("how_much_clip", &Histogram2D<BinType,FloatType>::how_much_clip)\
	.def("get_alloc_memory_size", &Histogram2D<BinType,FloatType>::get_alloc_memory_size)\
    ;
	
#define PY_HISTOGRAM2D_UINT(BinType,IntegerType)\
py::class_<Histogram2D<BinType,IntegerType>>( m , "Histogram2D_"#BinType"_"#IntegerType )\
	.def(py::init<int>(), "n_threads"_a.noconvert() )\
	.def(py::init<int,uint>(), "n_threads"_a.noconvert() , "bit"_a = 0 )\
	.def("accumulate", &Histogram2D<BinType,IntegerType>::accumulate_py<IntegerType>, "data_1"_a.noconvert(), "data_2"_a.noconvert() )\
	.def("reset", &Histogram2D<BinType,IntegerType>::reset)\
	.def("get", &Histogram2D<BinType,IntegerType>::share_py)\
	.def("moment", (double (Histogram2D<BinType,IntegerType>::*) (py::array_t<IntegerType> , uint , uint , int, bool) )&Histogram2D<BinType,IntegerType>::moment_py , "bins"_a.noconvert() ,"exp_x"_a , "exp_y"_a , "n_threads"_a ,  "no_clip"_a = false)\
	.def("moment", (double (Histogram2D<BinType,IntegerType>::*) (py::array_t<IntegerType> , uint , uint , uint64_t , int, bool) )&Histogram2D<BinType,IntegerType>::moment_py , "bins"_a.noconvert() ,"exp_x"_a , "exp_y"_a , "n_total"_a.noconvert() , "n_threads"_a , "no_clip"_a = false)\
	.def("how_much_clip", &Histogram2D<BinType,IntegerType>::how_much_clip)\
	.def("get_alloc_memory_size", &Histogram2D<BinType,IntegerType>::get_alloc_memory_size)\
    ;
	
#define PY_HISTOGRAM2D_INT(BinType,IntegerType)\
py::class_<Histogram2D<BinType,IntegerType>>( m , "Histogram2D_"#BinType"_"#IntegerType )\
	.def(py::init<int>(), "n_threads"_a.noconvert() )\
	.def(py::init<int,uint>(), "n_threads"_a.noconvert() , "bit"_a = 0 )\
	.def("accumulate", &Histogram2D<BinType,IntegerType>::accumulate_py<IntegerType>, "data_1"_a.noconvert(), "data_2"_a.noconvert() )\
	.def("reset", &Histogram2D<BinType,IntegerType>::reset)\
	.def("get", &Histogram2D<BinType,IntegerType>::share_py)\
	.def("moment", (double (Histogram2D<BinType,IntegerType>::*) (py::array_t<IntegerType> , uint , uint , int, bool) )&Histogram2D<BinType,IntegerType>::moment_py , "bins"_a.noconvert() ,"exp_x"_a , "exp_y"_a , "n_threads"_a , "no_clip"_a = false)\
	.def("moment", (double (Histogram2D<BinType,IntegerType>::*) (py::array_t<IntegerType> , uint , uint , uint64_t , int, bool) )&Histogram2D<BinType,IntegerType>::moment_py , "bins"_a.noconvert() ,"exp_x"_a , "exp_y"_a , "n_total"_a.noconvert() , "n_threads"_a , "no_clip"_a = false )\
	.def("how_much_clip", &Histogram2D<BinType,IntegerType>::how_much_clip)\
	.def("get_alloc_memory_size", &Histogram2D<BinType,IntegerType>::get_alloc_memory_size)\
	;
       
#define PY_HISTOGRAM(BinType)\
	PY_HISTOGRAM_FLOAT(BinType,double);\
	PY_HISTOGRAM_FLOAT(BinType,float); \
	PY_HISTOGRAM_UINT(BinType,uint8_t); \
	PY_HISTOGRAM_UINT(BinType,uint16_t);\
	PY_HISTOGRAM_INT(BinType,int8_t);\
	PY_HISTOGRAM_INT(BinType,int16_t);\
	\
	PY_HISTOGRAM2D_FLOAT(BinType,double);\
	PY_HISTOGRAM2D_FLOAT(BinType,float); \
	PY_HISTOGRAM2D_UINT(BinType,uint16_t); \
	PY_HISTOGRAM2D_UINT(BinType,uint8_t); \
	PY_HISTOGRAM2D_INT(BinType,int16_t);\
	PY_HISTOGRAM2D_INT(BinType,int8_t);\

void init_Histograms(py::module &m)
{
	PY_HISTOGRAM(uint64_t);
	PY_HISTOGRAM(uint32_t);
}

// CLOSE MACRO SCOPES
#undef PY_HISTOGRAM_FLOAT
#undef PY_HISTOGRAM_UINT
#undef PY_HISTOGRAM_INT
#undef PY_HISTOGRAM2D_FLOAT
#undef PY_HISTOGRAM2D_UINT
#undef PY_HISTOGRAM2D_INT
#undef PY_HISTOGRAM

// See Pybind11 FAQ «How can I reduce the build time ?» :
// https://pybind11.readthedocs.io/en/stable/faq.html#how-can-i-reduce-the-build-time

PYBIND11_MODULE(histograms, m)
{
    m.doc() = "Fast histogram library for many types (integers and floats)\n"\
    "Git Info : \n "\
    + std::string(kGitInfo)\
    +"\n";
	init_Histograms(m);
}

