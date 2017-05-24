help([[Boost provides free peer-reviewed portable C++ source libraries. - Homepage: http://www.boost.org/]])

whatis([[Description: Boost provides free peer-reviewed portable C++ source libraries. - Homepage: http://www.boost.org/]])

local root = "/opt/apps/software/Boost/1.61.0-foss-2016b"

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

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTBOOST", root)
setenv("EBVERSIONBOOST", "1.61.0")
setenv("EBDEVELBOOST", pathJoin(root, "easybuild/Boost-1.61.0-foss-2016b-easybuild-devel"))

setenv("BOOST_ROOT", "/opt/apps/software/Boost/1.61.0-foss-2016b")
-- Built with EasyBuild version 3.1.2
