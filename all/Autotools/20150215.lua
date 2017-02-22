help([[This bundle collect the standard GNU build tools: Autoconf, Automake and libtool - Homepage: http://autotools.io]])

whatis([[Description: This bundle collect the standard GNU build tools: Autoconf, Automake and libtool - Homepage: http://autotools.io]])

local root = "/opt/apps/software/Autotools/20150215"

conflict("Autotools")

if not isloaded("Autoconf/2.69") then
    load("Autoconf/2.69")
end

if not isloaded("Automake/1.15") then
    load("Automake/1.15")
end

if not isloaded("libtool/2.4.6") then
    load("libtool/2.4.6")
end

setenv("EBROOTAUTOTOOLS", root)
setenv("EBVERSIONAUTOTOOLS", "20150215")
setenv("EBDEVELAUTOTOOLS", pathJoin(root, "easybuild/Autotools-20150215-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
