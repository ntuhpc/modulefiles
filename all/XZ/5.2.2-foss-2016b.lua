help([[xz: XZ utilities - Homepage: http://tukaani.org/xz/]])

whatis([[Description: xz: XZ utilities - Homepage: http://tukaani.org/xz/]])

local root = "/opt/apps/software/XZ/5.2.2-foss-2016b"

conflict("XZ")

if not isloaded("foss/2016b") then
    load("foss/2016b")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTXZ", root)
setenv("EBVERSIONXZ", "5.2.2")
setenv("EBDEVELXZ", pathJoin(root, "easybuild/XZ-5.2.2-foss-2016b-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
