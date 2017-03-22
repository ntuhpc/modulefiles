help([[The libffi library provides a portable, high level programming interface to various calling
conventions. This allows a programmer to call any function specified by a call interface description at run-time. - Homepage: http://sourceware.org/libffi/]])

whatis([[Description: The libffi library provides a portable, high level programming interface to various calling
conventions. This allows a programmer to call any function specified by a call interface description at run-time. - Homepage: http://sourceware.org/libffi/]])

local root = "/opt/apps/software/libffi/3.2.1-GCC-5.4.0-2.26"

conflict("libffi")

if not isloaded("GCC/5.4.0-2.26") then
    load("GCC/5.4.0-2.26")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBFFI", root)
setenv("EBVERSIONLIBFFI", "3.2.1")
setenv("EBDEVELLIBFFI", pathJoin(root, "easybuild/libffi-3.2.1-GCC-5.4.0-2.26-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
