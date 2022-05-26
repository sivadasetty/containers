sudo singularity build cpu-mpi.sif cpu-mpi.def
sudo singularity cache clean <<EOF
y
EOF
#sudo rm -f -r /var/tmp/* cpu-mpi.sif/ temp.sif gpu-ntmpi.sif temp.* cpu-mpi.sif gpu-mpi.sif
sudo rm -f -r /var/tmp/*
sudo singularity build gpu-mpi.sif gpu-mpi.def
