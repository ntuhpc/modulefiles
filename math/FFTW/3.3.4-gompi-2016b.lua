help([[FFTW is a C subroutine library for computing the discrete Fourier transform (DFT)
 in one or more dimensions, of arbitrary input size, and of both real and complex data. - Homepage: http://www.fftw.org]])

whatis([[Description: FFTW is a C subroutine library for computing the discrete Fourier transform (DFT)
 in one or more dimensions, of arbitrary input size, and of both real and complex data. - Homepage: http://www.fftw.org]])

local root = "/opt/apps/software/FFTW/3.3.4-gompi-2016b"

conflict("FFTW")

if not isloaded("gompi/2016b") then
    load("gompi/2016b")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTFFTW", root)
setenv("EBVERSIONFFTW", "3.3.4")
setenv("EBDEVELFFTW", pathJoin(root, "easybuild/FFTW-3.3.4-gompi-2016b-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
