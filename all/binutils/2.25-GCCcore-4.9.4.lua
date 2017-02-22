help([[binutils: GNU binary utilities - Homepage: http://directory.fsf.org/project/binutils/]])

whatis([[Description: binutils: GNU binary utilities - Homepage: http://directory.fsf.org/project/binutils/]])

local root = "/opt/apps/software/binutils/2.25-GCCcore-4.9.4"

conflict("binutils")

if not isloaded("GCCcore/4.9.4") then
    load("GCCcore/4.9.4")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBINUTILS", root)
setenv("EBVERSIONBINUTILS", "2.25")
setenv("EBDEVELBINUTILS", pathJoin(root, "easybuild/binutils-2.25-GCCcore-4.9.4-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
