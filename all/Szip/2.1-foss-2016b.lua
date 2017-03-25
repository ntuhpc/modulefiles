help([[Szip compression software, providing lossless compression of scientific data - Homepage: http://www.hdfgroup.org/doc_resource/SZIP/]])

whatis([[Description: Szip compression software, providing lossless compression of scientific data - Homepage: http://www.hdfgroup.org/doc_resource/SZIP/]])

local root = "/opt/apps/software/Szip/2.1-foss-2016b"

conflict("Szip")

if not isloaded("foss/2016b") then
    load("foss/2016b")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTSZIP", root)
setenv("EBVERSIONSZIP", "2.1")
setenv("EBDEVELSZIP", pathJoin(root, "easybuild/Szip-2.1-foss-2016b-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
