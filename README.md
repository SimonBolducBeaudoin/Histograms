# Histograms
Fast histograms using OMP.

## Dependencies
    All homebrewed libraries are imported using global imports "#include <library.h> ".
    This means that the library must eather be installed in your environnment's path or that it must be included during compilation and linking. 
    You can edit the "CmakeList.txt" to properly include homebrewed libraries.
    - Homebrewed libraries (available on my github : https://github.com/SimonBolducBeaudoin)
        - omp_extra
        - Multi_array
        - moments_cumulants
        - 
    - Other dependencies
        - pybind11
    Pybind11 can be installed using you're python package manager (conda(anaconda env),pip,pacman,...).
    Again the "CmakeList.txt" files must be edited to point to your python executable so that pybind11 can be detected and used.