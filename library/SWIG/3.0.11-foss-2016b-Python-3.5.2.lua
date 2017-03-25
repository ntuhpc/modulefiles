help([[SWIG is a software development tool that connects programs written in C and C++ with
 a variety of high-level programming languages. - Homepage: http://www.swig.org/]])

whatis([[Description: SWIG is a software development tool that connects programs written in C and C++ with
 a variety of high-level programming languages. - Homepage: http://www.swig.org/]])

local root = "/opt/apps/software/SWIG/3.0.11-foss-2016b-Python-3.5.2"

conflict("SWIG")

if not isloaded("foss/2016b") then
    load("foss/2016b")
end

if not isloaded("Python/3.5.2-foss-2016b") then
    load("Python/3.5.2-foss-2016b")
end

if not isloaded("PCRE/8.38-foss-2016b") then
    load("PCRE/8.38-foss-2016b")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSWIG", root)
setenv("EBVERSIONSWIG", "3.0.11")
setenv("EBDEVELSWIG", pathJoin(root, "easybuild/SWIG-3.0.11-foss-2016b-Python-3.5.2-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
