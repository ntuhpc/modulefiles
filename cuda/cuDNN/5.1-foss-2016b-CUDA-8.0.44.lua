help([[The NVIDIA CUDA Deep Neural Network library (cuDNN) is a GPU-accelerated library of primitives for
    deep neural networks. - Homepage: https://developer.nvidia.com/cudnn]])

whatis([[Description: The NVIDIA CUDA Deep Neural Network library (cuDNN) is a GPU-accelerated library of primitives for
    deep neural networks. - Homepage: https://developer.nvidia.com/cudnn]])

local root = "/opt/apps/software/cuDNN/5.1-foss-2016b-CUDA-8.0.44"

conflict("cuDNN")

if not isloaded("foss/2016b") then
    load("foss/2016b")
end

if not isloaded("CUDA/8.0.44-GCC-5.4.0-2.26") then
    load("CUDA/8.0.44-GCC-5.4.0-2.26")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
setenv("EBROOTCUDNN", root)
setenv("EBVERSIONCUDNN", "5.1")
setenv("EBDEVELCUDNN", pathJoin(root, "easybuild/cuDNN-5.1-foss-2016b-CUDA-8.0.44-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
