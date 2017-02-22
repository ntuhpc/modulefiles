help([[Automake: GNU Standards-compliant Makefile generator - Homepage: http://www.gnu.org/software/automake/automake.html]])

whatis([[Description: Automake: GNU Standards-compliant Makefile generator - Homepage: http://www.gnu.org/software/automake/automake.html]])

local root = "/opt/apps/software/Automake/1.15"

conflict("Automake")

if not isloaded("Autoconf/2.69") then
    load("Autoconf/2.69")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTAUTOMAKE", root)
setenv("EBVERSIONAUTOMAKE", "1.15")
setenv("EBDEVELAUTOMAKE", pathJoin(root, "easybuild/Automake-1.15-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
