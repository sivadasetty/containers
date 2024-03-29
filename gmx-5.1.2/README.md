###### Author - Siva Dasetty

###### About - Install GROMACS-5.1.2 on CentOS 7 and run custom analysis codes. Tested with [singularity](https://github.com/apptainer/singularity) [version 3.7.2](https://github.com/apptainer/singularity/releases/download/v3.7.2/singularity-3.7.2.tar.gz) on Ubuntu 20.4

###### Perform this on a machine with sudo privileges
1. `sudo singularity build gmx-5.1.2.sif gmx-5.1.2.def`

###### For compiling analysis codes - [examples (request access)](https://github.com/sivadasetty/2019-clemson-research-codes)
1. `singularity shell gmx-5.1.2.sif`
2. `source /usr/local/bin/GMXRC`
3. `mkdir analysis`
4. `cd analysis`
5. `cp <path to analysis codes>/analysis.cpp .`
6. `cp -r /usr/local/share/gromacs/template/cmake .`
7. `cp /usr/local/share/gromacs/template/CMakeLists.txt .`
8. `sed -i s/template/analysis/g  CMakeLists.txt`
9. `cmake ../analysis -DCMAKE_CXX_COMPILER=/usr/bin/g++ -DCMAKE_C_COMPILER=/usr/bin/gcc`
10. `make`

###### Test
`./analysis -h`
