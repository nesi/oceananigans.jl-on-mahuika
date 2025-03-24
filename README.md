<h1 align="center">
   How to run Oceananigans.jl on Mahuika ( CPU/GPU)
</h1>


* Templates and CPU/GPU profile data for Oceananigans.jl (https://github.com/CliMA/Oceananigans.jl)  Julia package on NeSI Mahuika cluster

## baroclinic_adjustment.jl

* Expected output

https://github.com/user-attachments/assets/e699d95b-30e5-45b6-8b16-0dd808e63af9


### GPU and CPU profiling for baroclinic_adjustment.jl

* Following GPU and CPU profiling graphs are for slurm/baroclinic_adjustment.slurm

#### CPU/Memory/IO profile

<p align="center">
<img src="./profile-data/baroclinic_adjustment_53727486_profile.png"  width="600" alt="CPU/Memory/IO profile">
</p>

#### GPU profile with `nvidia-smi`

<p align="center">
<img src="./profile-data/baroclinic_adjustment-gpustats_53727486_figure.png" width="600" alt="GPU profile with nvidia-smi">
</p>