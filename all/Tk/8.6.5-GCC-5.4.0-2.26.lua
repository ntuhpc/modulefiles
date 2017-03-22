help([[Tk is an open source, cross-platform widget toolchain that provides a library of basic elements for
 building a graphical user interface (GUI) in many different programming languages. - Homepage: http://www.tcl.tk/]])

whatis([[Description: Tk is an open source, cross-platform widget toolchain that provides a library of basic elements for
 building a graphical user interface (GUI) in many different programming languages. - Homepage: http://www.tcl.tk/]])

local root = "/opt/apps/software/Tk/8.6.5-GCC-5.4.0-2.26"

conflict("Tk")

if not isloaded("GCC/5.4.0-2.26") then
    load("GCC/5.4.0-2.26")
end

if not isloaded("Tcl/8.6.5-GCC-5.4.0-2.26") then
    load("Tcl/8.6.5-GCC-5.4.0-2.26")
end

if not isloaded("zlib/1.2.8-GCC-5.4.0-2.26") then
    load("zlib/1.2.8-GCC-5.4.0-2.26")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTTK", root)
setenv("EBVERSIONTK", "8.6.5")
setenv("EBDEVELTK", pathJoin(root, "easybuild/Tk-8.6.5-GCC-5.4.0-2.26-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
