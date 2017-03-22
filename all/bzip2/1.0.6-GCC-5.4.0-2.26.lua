help([[bzip2 is a freely available, patent free, high-quality data compressor. It typically
 compresses files to within 10% to 15% of the best available techniques (the PPM family of statistical
 compressors), whilst being around twice as fast at compression and six times faster at decompression. - Homepage: http://www.bzip.org/]])

whatis([[Description: bzip2 is a freely available, patent free, high-quality data compressor. It typically
 compresses files to within 10% to 15% of the best available techniques (the PPM family of statistical
 compressors), whilst being around twice as fast at compression and six times faster at decompression. - Homepage: http://www.bzip.org/]])

local root = "/opt/apps/software/bzip2/1.0.6-GCC-5.4.0-2.26"

conflict("bzip2")

if not isloaded("GCC/5.4.0-2.26") then
    load("GCC/5.4.0-2.26")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBZIP2", root)
setenv("EBVERSIONBZIP2", "1.0.6")
setenv("EBDEVELBZIP2", pathJoin(root, "easybuild/bzip2-1.0.6-GCC-5.4.0-2.26-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
