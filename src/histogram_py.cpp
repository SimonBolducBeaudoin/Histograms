#include <histogram_py.h>

// CLASS MACROS		
#define PY_HISTOGRAM_FLOAT(BinType,FloatType)\
py::class_<Histogram<BinType,FloatType>>( m , "Histogram_"#BinType"_"#FloatType )\
	.def(py::init<uint,int,double>(), "nofbins"_a.noconvert() = 0,  "n_threads"_a.noconvert() = 6 , "max"_a = 1.0 )\
	.def("accumulate", &Histogram<BinType,FloatType>::accumulate_py<FloatType>, "data"_a.noconvert() )\
	.def("reset", &Histogram<BinType,FloatType>::reset)\
	.def("get", &Histogram<BinType,FloatType>::share_py)\
	.def("abscisse", &Histogram<BinType,FloatType>::abscisse_py, "max"_a.noconvert())\
	.def("moment", (double (Histogram<BinType,FloatType>::*) (py::array_t<FloatType> , uint , int) )&Histogram<BinType,FloatType>::moment_py , "bins"_a.noconvert() ,"exp"_a , "n_threads"_a = 6 )\
	.def("moment", (double (Histogram<BinType,FloatType>::*) (py::array_t<FloatType> , uint , uint64_t , int) )&Histogram<BinType,FloatType>::moment_py , "bins"_a.noconvert() ,"exp"_a , "n_total"_a.noconvert() , "n_threads"_a = 6 )\
    .def("moment_no_clip", (double (Histogram<BinType,FloatType>::*) (py::array_t<FloatType> , uint , int) )&Histogram<BinType,FloatType>::moment_no_clip_py , "bins"_a.noconvert() ,"exp"_a , "n_threads"_a = 6 )\
	.def("moment_no_clip", (double (Histogram<BinType,FloatType>::*) (py::array_t<FloatType> , uint , uint64_t , int) )&Histogram<BinType,FloatType>::moment_no_clip_py , "bins"_a.noconvert() ,"exp"_a , "n_total"_a.noconvert() , "n_threads"_a = 6 )\
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
	.def("abscisse", &Histogram<BinType,IntegerType>::abscisse_py, "max"_a.noconvert())\
	.def("moment", (double (Histogram<BinType,IntegerType>::*) (py::array_t<IntegerType> , uint , int) )&Histogram<BinType,IntegerType>::moment_py , "bins"_a.noconvert() ,"exp"_a , "n_threads"_a = 6 )\
	.def("moment", (double (Histogram<BinType,IntegerType>::*) (py::array_t<IntegerType> , uint , uint64_t , int) )&Histogram<BinType,IntegerType>::moment_py , "bins"_a.noconvert() ,"exp"_a , "n_total"_a.noconvert() , "n_threads"_a = 6 )\
    .def("moment_no_clip", (double (Histogram<BinType,IntegerType>::*) (py::array_t<IntegerType> , uint , int) )&Histogram<BinType,IntegerType>::moment_no_clip_py , "bins"_a.noconvert() ,"exp"_a , "n_threads"_a = 6 )\
	.def("moment_no_clip", (double (Histogram<BinType,IntegerType>::*) (py::array_t<IntegerType> , uint , uint64_t , int) )&Histogram<BinType,IntegerType>::moment_no_clip_py , "bins"_a.noconvert() ,"exp"_a , "n_total"_a.noconvert() , "n_threads"_a = 6 )\
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
	.def("moment", (double (Histogram<BinType,IntegerType>::*) (py::array_t<IntegerType> , uint , int) )&Histogram<BinType,IntegerType>::moment_py , "bins"_a.noconvert() ,"exp"_a , "n_threads"_a = 6 )\
	.def("moment", (double (Histogram<BinType,IntegerType>::*) (py::array_t<IntegerType> , uint , uint64_t , int) )&Histogram<BinType,IntegerType>::moment_py , "bins"_a.noconvert() ,"exp"_a , "n_total"_a.noconvert() , "n_threads"_a = 6 )\
    .def("moment_no_clip", (double (Histogram<BinType,IntegerType>::*) (py::array_t<IntegerType> , uint , int) )&Histogram<BinType,IntegerType>::moment_no_clip_py , "bins"_a.noconvert() ,"exp"_a , "n_threads"_a = 6 )\
	.def("moment_no_clip", (double (Histogram<BinType,IntegerType>::*) (py::array_t<IntegerType> , uint , uint64_t , int) )&Histogram<BinType,IntegerType>::moment_no_clip_py , "bins"_a.noconvert() ,"exp"_a , "n_total"_a.noconvert() , "n_threads"_a = 6 )\
    .def("how_much_clip", &Histogram<BinType,IntegerType>::how_much_clip)\
    .def("get_alloc_memory_size", &Histogram<BinType,IntegerType>::get_alloc_memory_size)\
    .def("swap", &Histogram<BinType,IntegerType>::swap<IntegerType> )\
	;

#define PY_HISTOGRAM2D_FLOAT(BinType,FloatType)\
py::class_<Histogram2D<BinType,FloatType>>( m , "Histogram2D_"#BinType"_"#FloatType )\
	.def(py::init<uint,int,double>(), "nofbins"_a.noconvert() , "n_threads"_a.noconvert() , "max"_a )\
	.def("accumulate", &Histogram2D<BinType,FloatType>::accumulate_py<FloatType>, "data_1"_a.noconvert(), "data_2"_a.noconvert() )\
	.def("reset", &Histogram2D<BinType,FloatType>::reset)\
	.def("get", &Histogram2D<BinType,FloatType>::share_py)\
	.def("abscisse", &Histogram2D<BinType,FloatType>::abscisse_py, "max"_a.noconvert())\
	.def("moment", (double (Histogram2D<BinType,FloatType>::*) (py::array_t<FloatType> , uint , uint , int) )&Histogram2D<BinType,FloatType>::moment_py , "bins"_a.noconvert() ,"exp_x"_a , "exp_y"_a , "n_threads"_a = 6 )\
	.def("moment", (double (Histogram2D<BinType,FloatType>::*) (py::array_t<FloatType> , uint , uint , uint64_t , int) )&Histogram2D<BinType,FloatType>::moment_py , "bins"_a.noconvert() ,"exp_x"_a , "exp_y"_a , "n_total"_a.noconvert() , "n_threads"_a = 6 )\
    .def("moment_no_clip", (double (Histogram2D<BinType,FloatType>::*) (py::array_t<FloatType> , uint , uint , int) )&Histogram2D<BinType,FloatType>::moment_no_clip_py , "bins"_a.noconvert() ,"exp_x"_a , "exp_y"_a , "n_threads"_a = 6 )\
	.def("moment_no_clip", (double (Histogram2D<BinType,FloatType>::*) (py::array_t<FloatType> , uint , uint , uint64_t , int) )&Histogram2D<BinType,FloatType>::moment_no_clip_py , "bins"_a.noconvert() ,"exp_x"_a , "exp_y"_a , "n_total"_a.noconvert() , "n_threads"_a = 6 )\
	.def("how_much_clip", &Histogram2D<BinType,FloatType>::how_much_clip)\
	.def("get_alloc_memory_size", &Histogram2D<BinType,FloatType>::get_alloc_memory_size)\
    ;
	
#define PY_HISTOGRAM2D_UINT(BinType,IntegerType)\
py::class_<Histogram2D<BinType,IntegerType>>( m , "Histogram2D_"#BinType"_"#IntegerType )\
	.def(py::init<int>(), "n_threads"_a.noconvert() = 6 )\
	.def(py::init<int,uint>(), "n_threads"_a.noconvert() = 6 , "bit"_a = 0 )\
	.def("accumulate", &Histogram2D<BinType,IntegerType>::accumulate_py<IntegerType>, "data_1"_a.noconvert(), "data_2"_a.noconvert() )\
	.def("reset", &Histogram2D<BinType,IntegerType>::reset)\
	.def("get", &Histogram2D<BinType,IntegerType>::share_py)\
	.def("moment", (double (Histogram2D<BinType,IntegerType>::*) (py::array_t<IntegerType> , uint , uint , int) )&Histogram2D<BinType,IntegerType>::moment_py , "bins"_a.noconvert() ,"exp_x"_a , "exp_y"_a , "n_threads"_a = 6 )\
	.def("moment", (double (Histogram2D<BinType,IntegerType>::*) (py::array_t<IntegerType> , uint , uint , uint64_t , int) )&Histogram2D<BinType,IntegerType>::moment_py , "bins"_a.noconvert() ,"exp_x"_a , "exp_y"_a , "n_total"_a.noconvert() , "n_threads"_a = 6 )\
    .def("moment_no_clip", (double (Histogram2D<BinType,IntegerType>::*) (py::array_t<IntegerType> , uint , uint , int) )&Histogram2D<BinType,IntegerType>::moment_no_clip_py , "bins"_a.noconvert() ,"exp_x"_a , "exp_y"_a , "n_threads"_a = 6 )\
	.def("moment_no_clip", (double (Histogram2D<BinType,IntegerType>::*) (py::array_t<IntegerType> , uint , uint , uint64_t , int) )&Histogram2D<BinType,IntegerType>::moment_no_clip_py , "bins"_a.noconvert() ,"exp_x"_a , "exp_y"_a , "n_total"_a.noconvert() , "n_threads"_a = 6 )\
	.def("how_much_clip", &Histogram2D<BinType,IntegerType>::how_much_clip)\
	.def("get_alloc_memory_size", &Histogram2D<BinType,IntegerType>::get_alloc_memory_size)\
    ;
	
#define PY_HISTOGRAM2D_INT(BinType,IntegerType)\
py::class_<Histogram2D<BinType,IntegerType>>( m , "Histogram2D_"#BinType"_"#IntegerType )\
	.def(py::init<int>(), "n_threads"_a.noconvert() = 6 )\
	.def(py::init<int,uint>(), "n_threads"_a.noconvert() = 6 , "bit"_a = 0 )\
	.def("accumulate", &Histogram2D<BinType,IntegerType>::accumulate_py<IntegerType>, "data_1"_a.noconvert(), "data_2"_a.noconvert() )\
	.def("reset", &Histogram2D<BinType,IntegerType>::reset)\
	.def("get", &Histogram2D<BinType,IntegerType>::share_py)\
	.def("moment", (double (Histogram2D<BinType,IntegerType>::*) (py::array_t<IntegerType> , uint , uint , int) )&Histogram2D<BinType,IntegerType>::moment_py , "bins"_a.noconvert() ,"exp_x"_a , "exp_y"_a , "n_threads"_a = 6 )\
	.def("moment", (double (Histogram2D<BinType,IntegerType>::*) (py::array_t<IntegerType> , uint , uint , uint64_t , int) )&Histogram2D<BinType,IntegerType>::moment_py , "bins"_a.noconvert() ,"exp_x"_a , "exp_y"_a , "n_total"_a.noconvert() , "n_threads"_a = 6 )\
    .def("moment_no_clip", (double (Histogram2D<BinType,IntegerType>::*) (py::array_t<IntegerType> , uint , uint , int) )&Histogram2D<BinType,IntegerType>::moment_no_clip_py , "bins"_a.noconvert() ,"exp_x"_a , "exp_y"_a , "n_threads"_a = 6 )\
	.def("moment_no_clip", (double (Histogram2D<BinType,IntegerType>::*) (py::array_t<IntegerType> , uint , uint , uint64_t , int) )&Histogram2D<BinType,IntegerType>::moment_no_clip_py , "bins"_a.noconvert() ,"exp_x"_a , "exp_y"_a , "n_total"_a.noconvert() , "n_threads"_a = 6 )\
	.def("how_much_clip", &Histogram2D<BinType,IntegerType>::how_much_clip)\
	.def("get_alloc_memory_size", &Histogram2D<BinType,IntegerType>::get_alloc_memory_size)\
    .def("swap", &Histogram2D<BinType,IntegerType>::swap<IntegerType> )\
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
    m.doc() = " Fast histogram library for many types (integers and floats)";
	init_Histograms(m);
	// init_buffered_arrays(m);
}

