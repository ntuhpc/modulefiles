help([[The GNU Compiler Collection includes front ends for C, C++, Objective-C, Fortran, Java, and Ada,
 as well as libraries for these languages (libstdc++, libgcj,...). - Homepage: http://gcc.gnu.org/]])

whatis([[Description: The GNU Compiler Collection includes front ends for C, C++, Objective-C, Fortran, Java, and Ada,
 as well as libraries for these languages (libstdc++, libgcj,...). - Homepage: http://gcc.gnu.org/]])

local root = "/opt/apps/software/GCC/4.9.4-2.25"

conflict("GCC")

if not isloaded("GCCcore/4.9.4") then
    load("GCCcore/4.9.4")
end

if not isloaded("binutils/2.25-GCCcore-4.9.4") then
    load("binutils/2.25-GCCcore-4.9.4")
end

setenv("EBROOTGCC", "/opt/apps/software/GCCcore/4.9.4")
setenv("EBVERSIONGCC", "4.9.4")
setenv("EBDEVELGCC", pathJoin(root, "easybuild/GCC-4.9.4-2.25-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
