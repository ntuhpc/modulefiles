help([[Eigen is a C++ template library for linear algebra:
 matrices, vectors, numerical solvers, and related algorithms. - Homepage: http://eigen.tuxfamily.org/index.php?title=Main_Page]])

whatis([[Description: Eigen is a C++ template library for linear algebra:
 matrices, vectors, numerical solvers, and related algorithms. - Homepage: http://eigen.tuxfamily.org/index.php?title=Main_Page]])

local root = "/opt/apps/software/Eigen/3.2.9-foss-2016b"

conflict("Eigen")

if not isloaded("foss/2016b") then
    load("foss/2016b")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("CPLUS_INCLUDE_PATH", pathJoin(root, "include"))
setenv("EBROOTEIGEN", root)
setenv("EBVERSIONEIGEN", "3.2.9")
setenv("EBDEVELEIGEN", pathJoin(root, "easybuild/Eigen-3.2.9-foss-2016b-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
