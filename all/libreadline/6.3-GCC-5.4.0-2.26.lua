help([[The GNU Readline library provides a set of functions for use by applications that
 allow users to edit command lines as they are typed in. Both Emacs and vi editing modes are available.
 The Readline library includes additional functions to maintain a list of previously-entered command lines,
 to recall and perhaps reedit those lines, and perform csh-like history expansion on previous commands. - Homepage: http://cnswww.cns.cwru.edu/php/chet/readline/rltop.html]])

whatis([[Description: The GNU Readline library provides a set of functions for use by applications that
 allow users to edit command lines as they are typed in. Both Emacs and vi editing modes are available.
 The Readline library includes additional functions to maintain a list of previously-entered command lines,
 to recall and perhaps reedit those lines, and perform csh-like history expansion on previous commands. - Homepage: http://cnswww.cns.cwru.edu/php/chet/readline/rltop.html]])

local root = "/opt/apps/software/libreadline/6.3-GCC-5.4.0-2.26"

conflict("libreadline")

if not isloaded("GCC/5.4.0-2.26") then
    load("GCC/5.4.0-2.26")
end

if not isloaded("ncurses/6.0-GCC-5.4.0-2.26") then
    load("ncurses/6.0-GCC-5.4.0-2.26")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTLIBREADLINE", root)
setenv("EBVERSIONLIBREADLINE", "6.3")
setenv("EBDEVELLIBREADLINE", pathJoin(root, "easybuild/libreadline-6.3-GCC-5.4.0-2.26-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
