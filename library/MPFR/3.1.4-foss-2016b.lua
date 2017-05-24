help([[The MPFR library is a C library for multiple-precision 
 floating-point computations with correct rounding. - Homepage: http://www.mpfr.org]])

whatis([[Description: The MPFR library is a C library for multiple-precision 
 floating-point computations with correct rounding. - Homepage: http://www.mpfr.org]])

local root = "/opt/apps/software/MPFR/3.1.4-foss-2016b"

conflict("MPFR")

if not isloaded("foss/2016b") then
    load("foss/2016b")
end

if not isloaded("GMP/6.1.1-foss-2016b") then
    load("GMP/6.1.1-foss-2016b")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTMPFR", root)
setenv("EBVERSIONMPFR", "3.1.4")
setenv("EBDEVELMPFR", pathJoin(root, "easybuild/MPFR-3.1.4-foss-2016b-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
