help([[CMake, the cross-platform, open-source build system.
 CMake is a family of tools designed to build, test and package software. - Homepage: http://www.cmake.org]])

whatis([[Description: CMake, the cross-platform, open-source build system.
 CMake is a family of tools designed to build, test and package software. - Homepage: http://www.cmake.org]])

local root = "/opt/apps/software/CMake/3.5.2"

conflict("CMake")

if not isloaded("ncurses/6.0") then
    load("ncurses/6.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCMAKE", root)
setenv("EBVERSIONCMAKE", "3.5.2")
setenv("EBDEVELCMAKE", pathJoin(root, "easybuild/CMake-3.5.2-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
