help([[binutils: GNU binary utilities - Homepage: http://directory.fsf.org/project/binutils/]])

whatis([[Description: binutils: GNU binary utilities - Homepage: http://directory.fsf.org/project/binutils/]])

local root = "/opt/apps/software/binutils/2.26-GCCcore-5.4.0"

conflict("binutils")

if not isloaded("GCCcore/5.4.0") then
    load("GCCcore/5.4.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBINUTILS", root)
setenv("EBVERSIONBINUTILS", "2.26")
setenv("EBDEVELBINUTILS", pathJoin(root, "easybuild/binutils-2.26-GCCcore-5.4.0-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
