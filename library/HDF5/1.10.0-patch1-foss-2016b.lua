help([[HDF5 is a unique technology suite that makes possible the management of
 extremely large and complex data collections. - Homepage: http://www.hdfgroup.org/HDF5/]])

whatis([[Description: HDF5 is a unique technology suite that makes possible the management of
 extremely large and complex data collections. - Homepage: http://www.hdfgroup.org/HDF5/]])

local root = "/opt/apps/software/HDF5/1.10.0-patch1-foss-2016b"

conflict("HDF5")

if not isloaded("foss/2016b") then
    load("foss/2016b")
end

if not isloaded("zlib/1.2.8-foss-2016b") then
    load("zlib/1.2.8-foss-2016b")
end

if not isloaded("Szip/2.1-foss-2016b") then
    load("Szip/2.1-foss-2016b")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTHDF5", root)
setenv("EBVERSIONHDF5", "1.10.0-patch1")
setenv("EBDEVELHDF5", pathJoin(root, "easybuild/HDF5-1.10.0-patch1-foss-2016b-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
