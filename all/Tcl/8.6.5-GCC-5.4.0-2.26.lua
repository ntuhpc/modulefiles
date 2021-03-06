help([[Tcl (Tool Command Language) is a very powerful but easy to learn dynamic programming language,
suitable for a very wide range of uses, including web and desktop applications, networking, administration,
testing and many more. - Homepage: http://www.tcl.tk/]])

whatis([[Description: Tcl (Tool Command Language) is a very powerful but easy to learn dynamic programming language,
suitable for a very wide range of uses, including web and desktop applications, networking, administration,
testing and many more. - Homepage: http://www.tcl.tk/]])

local root = "/opt/apps/software/Tcl/8.6.5-GCC-5.4.0-2.26"

conflict("Tcl")

if not isloaded("GCC/5.4.0-2.26") then
    load("GCC/5.4.0-2.26")
end

if not isloaded("zlib/1.2.8-GCC-5.4.0-2.26") then
    load("zlib/1.2.8-GCC-5.4.0-2.26")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTTCL", root)
setenv("EBVERSIONTCL", "8.6.5")
setenv("EBDEVELTCL", pathJoin(root, "easybuild/Tcl-8.6.5-GCC-5.4.0-2.26-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
