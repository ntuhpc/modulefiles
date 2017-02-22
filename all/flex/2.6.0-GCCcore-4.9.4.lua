help([[Flex (Fast Lexical Analyzer) is a tool for generating scanners. A scanner,
 sometimes called a tokenizer, is a program which recognizes lexical patterns in text. - Homepage: http://flex.sourceforge.net/]])

whatis([[Description: Flex (Fast Lexical Analyzer) is a tool for generating scanners. A scanner,
 sometimes called a tokenizer, is a program which recognizes lexical patterns in text. - Homepage: http://flex.sourceforge.net/]])

local root = "/opt/apps/software/flex/2.6.0-GCCcore-4.9.4"

conflict("flex")

if not isloaded("GCCcore/4.9.4") then
    load("GCCcore/4.9.4")
end

if not isloaded("M4/1.4.17-GCCcore-4.9.4") then
    load("M4/1.4.17-GCCcore-4.9.4")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTFLEX", root)
setenv("EBVERSIONFLEX", "2.6.0")
setenv("EBDEVELFLEX", pathJoin(root, "easybuild/flex-2.6.0-GCCcore-4.9.4-easybuild-devel"))

-- Built with EasyBuild version 3.1.0
