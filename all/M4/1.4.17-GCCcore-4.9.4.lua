help([[GNU M4 is an implementation of the traditional Unix macro processor. It is mostly SVR4 compatible
  although it has some extensions (for example, handling more than 9 positional parameters to macros).
 GNU M4 also has built-in functions for including files, running shell commands, doing arithmetic, etc. - Homepage: http://www.gnu.org/software/m4/m4.html]])

whatis([[Description: GNU M4 is an implementation of the traditional Unix macro processor. It is mostly SVR4 compatible
  although it has some extensions (for example, handling more than 9 positional parameters to macros).
 GNU M4 also has built-in functions for including files, running shell commands, doing arithmetic, etc. - Homepage: http://www.gnu.org/software/m4/m4.html]])

local root = "/opt/apps/software/M4/1.4.17-GCCcore-4.9.4"

conflict("M4")

if not isloaded("GCCcore/4.9.4") then
    load("GCCcore/4.9.4")
end

prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTM4", root)
setenv("EBVERSIONM4", "1.4.17")
setenv("EBDEVELM4", pathJoin(root, "easybuild/M4-1.4.17-GCCcore-4.9.4-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
