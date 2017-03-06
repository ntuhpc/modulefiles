help([[OpenBLAS is an optimized BLAS library based on GotoBLAS2 1.13 BSD version. - Homepage: http://xianyi.github.com/OpenBLAS/]])

whatis([[Description: OpenBLAS is an optimized BLAS library based on GotoBLAS2 1.13 BSD version. - Homepage: http://xianyi.github.com/OpenBLAS/]])

local root = "/opt/apps/software/OpenBLAS/0.2.18-GCC-5.4.0-2.26-LAPACK-3.6.1"

conflict("OpenBLAS")

if not isloaded("GCC/5.4.0-2.26") then
    load("GCC/5.4.0-2.26")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTOPENBLAS", root)
setenv("EBVERSIONOPENBLAS", "0.2.18")
setenv("EBDEVELOPENBLAS", pathJoin(root, "easybuild/OpenBLAS-0.2.18-GCC-5.4.0-2.26-LAPACK-3.6.1-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
