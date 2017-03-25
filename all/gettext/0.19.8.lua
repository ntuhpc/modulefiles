help([[GNU `gettext' is an important step for the GNU Translation Project, as it is an asset on which we may
build many other steps. This package offers to programmers, translators, and even users, a well integrated set of tools
and documentation - Homepage: http://www.gnu.org/software/gettext/]])

whatis([[Description: GNU `gettext' is an important step for the GNU Translation Project, as it is an asset on which we may
build many other steps. This package offers to programmers, translators, and even users, a well integrated set of tools
and documentation - Homepage: http://www.gnu.org/software/gettext/]])

local root = "/opt/apps/software/gettext/0.19.8"

conflict("gettext")

if not isloaded("ncurses/6.0") then
    load("ncurses/6.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGETTEXT", root)
setenv("EBVERSIONGETTEXT", "0.19.8")
setenv("EBDEVELGETTEXT", pathJoin(root, "easybuild/gettext-0.19.8-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
