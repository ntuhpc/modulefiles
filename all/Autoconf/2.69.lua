help([[Autoconf is an extensible package of M4 macros that produce shell scripts
 to automatically configure software source code packages. These scripts can adapt the
 packages to many kinds of UNIX-like systems without manual user intervention. Autoconf
 creates a configuration script for a package from a template file that lists the
 operating system features that the package can use, in the form of M4 macro calls. - Homepage: http://www.gnu.org/software/autoconf/]])

whatis([[Description: Autoconf is an extensible package of M4 macros that produce shell scripts
 to automatically configure software source code packages. These scripts can adapt the
 packages to many kinds of UNIX-like systems without manual user intervention. Autoconf
 creates a configuration script for a package from a template file that lists the
 operating system features that the package can use, in the form of M4 macro calls. - Homepage: http://www.gnu.org/software/autoconf/]])

local root = "/opt/apps/software/Autoconf/2.69"

conflict("Autoconf")

if not isloaded("M4/1.4.17") then
    load("M4/1.4.17")
end

prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTAUTOCONF", root)
setenv("EBVERSIONAUTOCONF", "2.69")
setenv("EBDEVELAUTOCONF", pathJoin(root, "easybuild/Autoconf-2.69-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
