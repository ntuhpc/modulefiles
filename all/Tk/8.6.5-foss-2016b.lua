help([[Tk is an open source, cross-platform widget toolchain that provides a library of basic elements for
 building a graphical user interface (GUI) in many different programming languages. - Homepage: http://www.tcl.tk/]])

whatis([[Description: Tk is an open source, cross-platform widget toolchain that provides a library of basic elements for
 building a graphical user interface (GUI) in many different programming languages. - Homepage: http://www.tcl.tk/]])

local root = "/opt/apps/software/Tk/8.6.5-foss-2016b"

conflict("Tk")

if not isloaded("foss/2016b") then
    load("foss/2016b")
end

if not isloaded("Tcl/8.6.5-foss-2016b") then
    load("Tcl/8.6.5-foss-2016b")
end

if not isloaded("zlib/1.2.8-foss-2016b") then
    load("zlib/1.2.8-foss-2016b")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTTK", root)
setenv("EBVERSIONTK", "8.6.5")
setenv("EBDEVELTK", pathJoin(root, "easybuild/Tk-8.6.5-foss-2016b-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
