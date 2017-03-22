help([[GNU Compiler Collection (GCC) based compiler toolchain, including
 OpenMPI for MPI support, OpenBLAS (BLAS and LAPACK support), FFTW and ScaLAPACK. - Homepage: (none)]])

whatis([[Description: GNU Compiler Collection (GCC) based compiler toolchain, including
 OpenMPI for MPI support, OpenBLAS (BLAS and LAPACK support), FFTW and ScaLAPACK. - Homepage: (none)]])

local root = "/opt/apps/software/foss/2016b"

conflict("foss")

if not isloaded("GCC/5.4.0-2.26") then
    load("GCC/5.4.0-2.26")
end

if not isloaded("OpenMPI/1.10.3-GCC-5.4.0-2.26") then
    load("OpenMPI/1.10.3-GCC-5.4.0-2.26")
end

if not isloaded("OpenBLAS/0.2.18-GCC-5.4.0-2.26-LAPACK-3.6.1") then
    load("OpenBLAS/0.2.18-GCC-5.4.0-2.26-LAPACK-3.6.1")
end

if not isloaded("FFTW/3.3.4-gompi-2016b") then
    load("FFTW/3.3.4-gompi-2016b")
end

if not isloaded("ScaLAPACK/2.0.2-gompi-2016b-OpenBLAS-0.2.18-LAPACK-3.6.1") then
    load("ScaLAPACK/2.0.2-gompi-2016b-OpenBLAS-0.2.18-LAPACK-3.6.1")
end

setenv("EBROOTFOSS", root)
setenv("EBVERSIONFOSS", "2016b")
setenv("EBDEVELFOSS", pathJoin(root, "easybuild/foss-2016b-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
