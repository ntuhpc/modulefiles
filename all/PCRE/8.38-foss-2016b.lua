help([[
 The PCRE library is a set of functions that implement regular expression pattern matching using the same syntax
 and semantics as Perl 5.
 - Homepage: http://www.pcre.org/]])

whatis([[Description: 
 The PCRE library is a set of functions that implement regular expression pattern matching using the same syntax
 and semantics as Perl 5.
 - Homepage: http://www.pcre.org/]])

local root = "/opt/apps/software/PCRE/8.38-foss-2016b"

conflict("PCRE")

if not isloaded("foss/2016b") then
    load("foss/2016b")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTPCRE", root)
setenv("EBVERSIONPCRE", "8.38")
setenv("EBDEVELPCRE", pathJoin(root, "easybuild/PCRE-8.38-foss-2016b-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
