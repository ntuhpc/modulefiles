help([[SQLite: SQL Database Engine in a C Library - Homepage: http://www.sqlite.org/]])

whatis([[Description: SQLite: SQL Database Engine in a C Library - Homepage: http://www.sqlite.org/]])

local root = "/opt/apps/software/SQLite/3.13.0-foss-2016b"

conflict("SQLite")

if not isloaded("foss/2016b") then
    load("foss/2016b")
end

if not isloaded("libreadline/6.3-foss-2016b") then
    load("libreadline/6.3-foss-2016b")
end

if not isloaded("Tcl/8.6.5-foss-2016b") then
    load("Tcl/8.6.5-foss-2016b")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTSQLITE", root)
setenv("EBVERSIONSQLITE", "3.13.0")
setenv("EBDEVELSQLITE", pathJoin(root, "easybuild/SQLite-3.13.0-foss-2016b-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
