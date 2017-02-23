help([[CUDA (formerly Compute Unified Device Architecture) is a parallel
 computing platform and programming model created by NVIDIA and implemented by the
 graphics processing units (GPUs) that they produce. CUDA gives developers access
 to the virtual instruction set and memory of the parallel computational elements in CUDA GPUs. - Homepage: https://developer.nvidia.com/cuda-toolkit]])

whatis([[Description: CUDA (formerly Compute Unified Device Architecture) is a parallel
 computing platform and programming model created by NVIDIA and implemented by the
 graphics processing units (GPUs) that they produce. CUDA gives developers access
 to the virtual instruction set and memory of the parallel computational elements in CUDA GPUs. - Homepage: https://developer.nvidia.com/cuda-toolkit]])

local root = "/opt/apps/software/CUDA/8.0.44-GCC-5.4.0-2.26"

conflict("CUDA")

if not isloaded("GCC/5.4.0-2.26") then
    load("GCC/5.4.0-2.26")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("CUDA_HOME", root)
prepend_path("CUDA_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCUDA", root)
setenv("EBVERSIONCUDA", "8.0.44")
setenv("EBDEVELCUDA", pathJoin(root, "easybuild/CUDA-8.0.44-GCC-5.4.0-2.26-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 3.1.0
