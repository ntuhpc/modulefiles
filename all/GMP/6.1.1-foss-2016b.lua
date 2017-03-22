help([[GMP is a free library for arbitrary precision arithmetic, 
operating on signed integers, rational numbers, and floating point numbers.  - Homepage: http://gmplib.org/]])

whatis([[Description: GMP is a free library for arbitrary precision arithmetic, 
operating on signed integers, rational numbers, and floating point numbers.  - Homepage: http://gmplib.org/]])

local root = "/opt/apps/software/GMP/6.1.1-foss-2016b"

conflict("GMP")

if not isloaded("foss/2016b") then
    load("foss/2016b")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTGMP", root)
setenv("EBVERSIONGMP", "6.1.1")
setenv("EBDEVELGMP", pathJoin(root, "easybuild/GMP-6.1.1-foss-2016b-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
