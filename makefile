NAME = histograms
PYLIB_EXT = $(if $(filter $(OS),Windows_NT),.pyd,.so)
TARGET_STATIC = lib$(NAME).a
TARGET_PYLIB = ../../Python_2_7/lib/$(NAME)$(PYLIB_EXT)

MULTI_ARRAY = ../Multi_array
OMP_EXTRA = ../Omp_extra
MOMENTS_CUMULANTS = ../Moments_cumulants
MATH_EXTRA = ../Math_extra
HISTOGRAMS = ../Histograms
LIBS = ../libs

IDIR = includes
ODIR = obj
LDIR = lib
SDIR = src

OMP_EXTRA_OBJ = $(wildcard $(OMP_EXTRA)/$(ODIR)/*.o)
MATH_EXTRA_OBJ = $(wildcard $(MATH_EXTRA)/$(ODIR)/*.o)
MOMENTS_CUMULANTS_OBJ = $(wildcard $(MOMENTS_CUMULANTS)/$(ODIR)/*.o)

EXTERNAL_OBJ = $(OMP_EXTRA_OBJ) $(MATH_EXTRA_OBJ) 
EXTERNAL_INCLUDES = -I$(MULTI_ARRAY)/$(IDIR) -I$(OMP_EXTRA)/$(IDIR) \
                    -I$(MATH_EXTRA)/$(IDIR) -I$(MOMENTS_CUMULANTS)/$(IDIR) \
                    -I$(HISTOGRAMS)/$(IDIR)

SRC  = $(wildcard $(SDIR)/*.cpp)
OBJ  = $(patsubst $(SDIR)/%.cpp,$(ODIR)/%.o,$(SRC))
OBJ_PY  = $(filter %_py.o,$(OBJ)) 
ASS  = $(patsubst $(SDIR)/%.cpp,$(ODIR)/%.s,$(SRC))
DEPS = $(OBJ:.o=.d)

CXX = $(OS:Windows_NT=x86_64-w64-mingw32-)g++
OPTIMIZATION = -O3 -march=native
CPP_STD = -std=c++14
WARNINGS = -Wall
MINGW_COMPATIBLE = $(OS:Windows_NT=-DMS_WIN64 -D_hypot=hypot)
DEPS_FLAG = -MMD -MP

POSITION_INDEP = -fPIC
SHARED = -shared

OMP = -fopenmp -fopenmp-simd
MATH = -lm

PY = $(OS:Windows_NT=/c/Anaconda2/)python

PY_INCL := $(shell $(PY) -m pybind11 --includes)
ifneq ($(OS),Windows_NT)
    PY_INCL += -I /usr/include/python2.7/
endif

PY_LINKS 	= 	$(OS:Windows_NT=-L /c/Anaconda2/ -lpython27)

LINKS 		= 	$(OMP) $(PY_LINKS)
LINKING 	= 	$(CXX) $(OPTIMIZATION) $(POSITION_INDEP) $(SHARED) -o $(TARGET_PYLIB) \
				$(OBJ_PY) $(LINKS) $(EXTERNAL_OBJ) $(DEPS_FLAG) $(MINGW_COMPATIBLE)
STATIC_LIB 	= 	ar cr $(TARGET_STATIC) $(OBJ) 

INCLUDES 	= 	$(OMP) $(PY_INCL) $(EXTERNAL_INCLUDES)
COMPILE  	= 	$(CXX) $(CPP_STD) $(OPTIMIZATION) $(POSITION_INDEP) $(WARNINGS) \
				-c -o $@ $< $(INCLUDES) $(DEPS_FLAG) $(MINGW_COMPATIBLE)
ASSEMBLY 	= 	$(CXX) $(CPP_STD) $(OPTIMIZATION) $(POSITION_INDEP) $(WARNINGS) \
				-S -o $@ $< $(INCLUDES) $(DEPS_FLAG) $(MINGW_COMPATIBLE)

LINK_BENCHMARK_CUSTOM = $(OMP) 

LINK_BENCHMARK = \
	-L$(LIBS)/benchmark/build/src -lbenchmark -lpthread -lshlwapi \
	$(LINK_BENCHMARK_CUSTOM)

LINKING_BENCHMARK_OBJ = $(EXTERNAL_OBJ) \

LINKING_BENCHMARK = \
	$(CXX) $< \
	$(LINKING_BENCHMARK_OBJ)\
	-O3 -march=native \
	-static \
	$(LINK_BENCHMARK)\
	$(DEPS_FLAG) $(MINGW_COMPATIBLE) \
	-o $@ \
	
INCLUDES_BENCHMARK = \
	-I $(LIBS)/benchmark/include \
	$(INCLUDES)
	
COMPILE_BENCHMARK = \
	$(CXX) $(CPP_STD) $< -O3 -march=native \
	$(INCLUDES_BENCHMARK) \
	$(DEPS_FLAG) $(MINGW_COMPATIBLE) \
	-c -o $@

python_debug_library : $(TARGET_PYLIB)

compile_objects : $(OBJ)

assembly : $(ASS)

all : $(TARGET_PYLIB) $(TARGET_STATIC) $(OBJ) $(ASS)

static_library : $(TARGET_STATIC)

benchmark : benchmark.exe

benchmark.exe : benchmark.o
	@ echo " "
	@ echo "---------Compile $@ ---------"
	$(LINKING_BENCHMARK)

benchmark.o : benchmark.cpp
	@ echo " "
	@ echo "---------Compile $@ from $< ---------"
	$(COMPILE_BENCHMARK)	

$(TARGET_PYLIB): $(OBJ_PY)
	@ echo " $(OBJ_PY) "
	@ echo "---------Compile library $(TARGET_PYLIB)---------"
	$(LINKING)

$(TARGET_STATIC) : $(OBJ)
	@ echo " "
	@ echo "---------Compiling static library $(TARGET_STATIC)---------"
	$(STATIC_LIB)
	
$(ODIR)/%.o : $(SDIR)/%.cpp
	@ echo " "
	@ echo "---------Compile object $@ from $<--------"
	$(COMPILE)
	
$(ODIR)/%.s : $(SDIR)/%.cpp
	@ echo " "
	@ echo "---------Assembly $@ from $<--------"
	$(ASSEMBLY)
	
-include $(DEPS)

clean:
	@rm -f $(TARGET_PYLIB) $(TARGET_STATIC) $(OBJ)  $(OBJ_PY) $(ASS) $(DEPS)
	 	 
.PHONY: all , clean , python_debug_library , compile_objects , static_library , assembly , benchmark