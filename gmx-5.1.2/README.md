###### Author - Siva Dasetty

###### About - Install GROMACS-5.1.2 on CentOS 7 and run custom analysis codes. Tested with singularity version 3.7.2 on Ubuntu 20.4

#### Perform this on a machine with sudo privileges
1. sudo singularity build gmx-5.1.2.sif gmx-5.1.2.def

#### For compiling analysis codes
1. singularity shell gmx-5.1.2.sif
2. source /usr/local/bin/GMXRC
3. mkdir analysis
4. cd analysis
5. cp <path to analysis codes>/analysis.cpp .
6. cp -r /usr/local/share/gromacs/template/cmake .
7. cp /usr/local/share/gromacs/template/CMakeLists.txt .
8. sed s/template/analysis/g  CMakeLists.txt > temp.txt
9. mv temp.txt CMakeLists.txt
10. cmake ../analysis -DCMAKE_CXX_COMPILER=/usr/bin/g++ -DCMAKE_C_COMPILER=/usr/bin/gcc
11. make
12. ./analysis -h
