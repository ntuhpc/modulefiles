help([[The Open MPI Project is an open source MPI-2 implementation. - Homepage: http://www.open-mpi.org/]])

whatis([[Description: The Open MPI Project is an open source MPI-2 implementation. - Homepage: http://www.open-mpi.org/]])

local root = "/opt/apps/software/OpenMPI/1.10.3-GCC-5.4.0-2.26"

conflict("OpenMPI")

if not isloaded("GCC/5.4.0-2.26") then
    load("GCC/5.4.0-2.26")
end

if not isloaded("hwloc/1.11.3-GCC-5.4.0-2.26") then
    load("hwloc/1.11.3-GCC-5.4.0-2.26")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTOPENMPI", root)
setenv("EBVERSIONOPENMPI", "1.10.3")
setenv("EBDEVELOPENMPI", pathJoin(root, "easybuild/OpenMPI-1.10.3-GCC-5.4.0-2.26-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
