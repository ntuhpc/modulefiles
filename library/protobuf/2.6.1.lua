help([[Google Protocol Buffers - Homepage: https://github.com/google/protobuf/]])

whatis([[Description: Google Protocol Buffers - Homepage: https://github.com/google/protobuf/]])

local root = "/opt/apps/software/protobuf/2.6.1"

conflict("protobuf")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTPROTOBUF", root)
setenv("EBVERSIONPROTOBUF", "2.6.1")
setenv("EBDEVELPROTOBUF", pathJoin(root, "easybuild/protobuf-2.6.1-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
