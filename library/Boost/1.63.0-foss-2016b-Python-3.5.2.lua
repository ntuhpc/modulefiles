help([[Boost provides free peer-reviewed portable C++ source libraries. - Homepage: http://www.boost.org/]])

whatis([[Description: Boost provides free peer-reviewed portable C++ source libraries. - Homepage: http://www.boost.org/]])

local root = "/opt/apps/software/Boost/1.63.0-foss-2016b-Python-3.5.2"

conflict("Boost")

if not isloaded("foss/2016b") then
    load("foss/2016b")
end

if not isloaded("bzip2/1.0.6-foss-2016b") then
    load("bzip2/1.0.6-foss-2016b")
end

if not isloaded("zlib/1.2.8-foss-2016b") then
    load("zlib/1.2.8-foss-2016b")
end

if not isloaded("Python/3.5.2-foss-2016b") then
    load("Python/3.5.2-foss-2016b")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTBOOST", root)
setenv("EBVERSIONBOOST", "1.63.0")
setenv("EBDEVELBOOST", pathJoin(root, "easybuild/Boost-1.63.0-foss-2016b-Python-3.5.2-easybuild-devel"))

setenv("BOOST_ROOT", "/opt/apps/software/Boost/1.63.0-foss-2016b-Python-3.5.2")
-- Built with EasyBuild version 3.1.0
