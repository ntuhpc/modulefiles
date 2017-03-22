help([[The Ncurses (new curses) library is a free software emulation of curses in System V Release 4.0,
 and more. It uses Terminfo format, supports pads and color and multiple highlights and forms characters and
 function-key mapping, and has all the other SYSV-curses enhancements over BSD Curses. - Homepage: http://www.gnu.org/software/ncurses/]])

whatis([[Description: The Ncurses (new curses) library is a free software emulation of curses in System V Release 4.0,
 and more. It uses Terminfo format, supports pads and color and multiple highlights and forms characters and
 function-key mapping, and has all the other SYSV-curses enhancements over BSD Curses. - Homepage: http://www.gnu.org/software/ncurses/]])

local root = "/opt/apps/software/ncurses/6.0-foss-2016b"

conflict("ncurses")

if not isloaded("foss/2016b") then
    load("foss/2016b")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTNCURSES", root)
setenv("EBVERSIONNCURSES", "6.0")
setenv("EBDEVELNCURSES", pathJoin(root, "easybuild/ncurses-6.0-foss-2016b-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
