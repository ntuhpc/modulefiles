help([[The libffi library provides a portable, high level programming interface to various calling
conventions. This allows a programmer to call any function specified by a call interface description at run-time. - Homepage: http://sourceware.org/libffi/]])

whatis([[Description: The libffi library provides a portable, high level programming interface to various calling
conventions. This allows a programmer to call any function specified by a call interface description at run-time. - Homepage: http://sourceware.org/libffi/]])

local root = "/opt/apps/software/libffi/3.2.1-foss-2016b"

conflict("libffi")

if not isloaded("foss/2016b") then
    load("foss/2016b")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBFFI", root)
setenv("EBVERSIONLIBFFI", "3.2.1")
setenv("EBDEVELLIBFFI", pathJoin(root, "easybuild/libffi-3.2.1-foss-2016b-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
