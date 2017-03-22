help([[This bundle collect the standard GNU build tools: Autoconf, Automake and libtool - Homepage: http://autotools.io]])

whatis([[Description: This bundle collect the standard GNU build tools: Autoconf, Automake and libtool - Homepage: http://autotools.io]])

local root = "/opt/apps/software/Autotools/20150215-GCC-5.4.0-2.26"

conflict("Autotools")

if not isloaded("GCC/5.4.0-2.26") then
    load("GCC/5.4.0-2.26")
end

if not isloaded("Autoconf/2.69-GCC-5.4.0-2.26") then
    load("Autoconf/2.69-GCC-5.4.0-2.26")
end

if not isloaded("Automake/1.15-GCC-5.4.0-2.26") then
    load("Automake/1.15-GCC-5.4.0-2.26")
end

if not isloaded("libtool/2.4.6-GCC-5.4.0-2.26") then
    load("libtool/2.4.6-GCC-5.4.0-2.26")
end

setenv("EBROOTAUTOTOOLS", root)
setenv("EBVERSIONAUTOTOOLS", "20150215")
setenv("EBDEVELAUTOTOOLS", pathJoin(root, "easybuild/Autotools-20150215-GCC-5.4.0-2.26-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
