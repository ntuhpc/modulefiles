help([[This bundle collect the standard GNU build tools: Autoconf, Automake and libtool - Homepage: http://autotools.io]])

whatis([[Description: This bundle collect the standard GNU build tools: Autoconf, Automake and libtool - Homepage: http://autotools.io]])

local root = "/opt/apps/software/Autotools/20150215-foss-2016b"

conflict("Autotools")

if not isloaded("foss/2016b") then
    load("foss/2016b")
end

if not isloaded("Autoconf/2.69-foss-2016b") then
    load("Autoconf/2.69-foss-2016b")
end

if not isloaded("Automake/1.15-foss-2016b") then
    load("Automake/1.15-foss-2016b")
end

if not isloaded("libtool/2.4.6-foss-2016b") then
    load("libtool/2.4.6-foss-2016b")
end

setenv("EBROOTAUTOTOOLS", root)
setenv("EBVERSIONAUTOTOOLS", "20150215")
setenv("EBDEVELAUTOTOOLS", pathJoin(root, "easybuild/Autotools-20150215-foss-2016b-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
