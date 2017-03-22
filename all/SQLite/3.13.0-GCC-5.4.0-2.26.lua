help([[SQLite: SQL Database Engine in a C Library - Homepage: http://www.sqlite.org/]])

whatis([[Description: SQLite: SQL Database Engine in a C Library - Homepage: http://www.sqlite.org/]])

local root = "/opt/apps/software/SQLite/3.13.0-GCC-5.4.0-2.26"

conflict("SQLite")

if not isloaded("GCC/5.4.0-2.26") then
    load("GCC/5.4.0-2.26")
end

if not isloaded("libreadline/6.3-GCC-5.4.0-2.26") then
    load("libreadline/6.3-GCC-5.4.0-2.26")
end

if not isloaded("Tcl/8.6.5-GCC-5.4.0-2.26") then
    load("Tcl/8.6.5-GCC-5.4.0-2.26")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTSQLITE", root)
setenv("EBVERSIONSQLITE", "3.13.0")
setenv("EBDEVELSQLITE", pathJoin(root, "easybuild/SQLite-3.13.0-GCC-5.4.0-2.26-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
