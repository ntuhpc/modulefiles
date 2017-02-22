help([[The GNU Compiler Collection includes front ends for C, C++, Objective-C, Fortran, Java, and Ada,
 as well as libraries for these languages (libstdc++, libgcj,...). - Homepage: http://gcc.gnu.org/]])

whatis([[Description: The GNU Compiler Collection includes front ends for C, C++, Objective-C, Fortran, Java, and Ada,
 as well as libraries for these languages (libstdc++, libgcj,...). - Homepage: http://gcc.gnu.org/]])

local root = "/opt/apps/software/GCCcore/4.9.4"

conflict("GCCcore")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/gcc/x86_64-unknown-linux-gnu/4.9.4"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGCCCORE", root)
setenv("EBVERSIONGCCCORE", "4.9.4")
setenv("EBDEVELGCCCORE", pathJoin(root, "easybuild/GCCcore-4.9.4-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
