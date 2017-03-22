help([[The ScaLAPACK (or Scalable LAPACK) library includes a subset of LAPACK routines
 redesigned for distributed memory MIMD parallel computers. - Homepage: http://www.netlib.org/scalapack/]])

whatis([[Description: The ScaLAPACK (or Scalable LAPACK) library includes a subset of LAPACK routines
 redesigned for distributed memory MIMD parallel computers. - Homepage: http://www.netlib.org/scalapack/]])

local root = "/opt/apps/software/ScaLAPACK/2.0.2-gompi-2016b-OpenBLAS-0.2.18-LAPACK-3.6.1"

conflict("ScaLAPACK")

if not isloaded("gompi/2016b") then
    load("gompi/2016b")
end

if not isloaded("OpenBLAS/0.2.18-GCC-5.4.0-2.26-LAPACK-3.6.1") then
    load("OpenBLAS/0.2.18-GCC-5.4.0-2.26-LAPACK-3.6.1")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTSCALAPACK", root)
setenv("EBVERSIONSCALAPACK", "2.0.2")
setenv("EBDEVELSCALAPACK", pathJoin(root, "easybuild/ScaLAPACK-2.0.2-gompi-2016b-OpenBLAS-0.2.18-LAPACK-3.6.1-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
