help([[The GNU Readline library provides a set of functions for use by applications that
 allow users to edit command lines as they are typed in. Both Emacs and vi editing modes are available.
 The Readline library includes additional functions to maintain a list of previously-entered command lines,
 to recall and perhaps reedit those lines, and perform csh-like history expansion on previous commands. - Homepage: http://cnswww.cns.cwru.edu/php/chet/readline/rltop.html]])

whatis([[Description: The GNU Readline library provides a set of functions for use by applications that
 allow users to edit command lines as they are typed in. Both Emacs and vi editing modes are available.
 The Readline library includes additional functions to maintain a list of previously-entered command lines,
 to recall and perhaps reedit those lines, and perform csh-like history expansion on previous commands. - Homepage: http://cnswww.cns.cwru.edu/php/chet/readline/rltop.html]])

local root = "/opt/apps/software/libreadline/6.3-foss-2016b"

conflict("libreadline")

if not isloaded("foss/2016b") then
    load("foss/2016b")
end

if not isloaded("ncurses/6.0-foss-2016b") then
    load("ncurses/6.0-foss-2016b")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTLIBREADLINE", root)
setenv("EBVERSIONLIBREADLINE", "6.3")
setenv("EBDEVELLIBREADLINE", pathJoin(root, "easybuild/libreadline-6.3-foss-2016b-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
