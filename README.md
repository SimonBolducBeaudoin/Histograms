# Histograms
Fast histograms using OMP.

# Dependencies
    All homebrewed libraries are imported using global imports "#include <library.h> ".
    This means that the library must eather be installed in your environnment's path or that it must be included during compilation and linking. 
    You can edit the "CmakeList.txt" to properly include homebrewed libraries.
    - Homebrewed libraries (available on my github : https://github.com/SimonBolducBeaudoin)
        - Omp_extra
        - Multi_array
        - Moments_cumulants
        - Math_extra
    - Other dependencies
        - fftw3
            - Can be installed using your package manager.
        - pybind11
    Pybind11 can be installed using you're python package manager (conda(anaconda env),pip,pacman,...).
    
# Building and compiling
Edit config.cmake for your machine (If you are compiling in a different envionnment than your python installation) so th  at pybind11 can be detected and used.
```bash
cmake -S . -B ./build  # Building in Linux
```
```bash
cmake -S . -B ./build -DCMAKE_TOOLCHAIN_FILE=../CMakeConfigs/mingw_toolchain.cmake # Building in Windows (Cross compiling on Cygwin with mingw)
```
```bash
cmake --build build/ # Compiles the project
```
```bash
cmake --install build/ # Copies files to their intended directory
```   
```bash
cmake --build build/ --target uninstall # uninstall 
```  
```bash
cmake --build build/ --target clean # removes targets 
```   
```bash
rm -R -f build/ # removes build directory
```   