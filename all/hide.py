import os

root_dir = os.path.dirname(os.path.realpath(__file__))

f = open(".modulerc", "w")
f.write("#%Module\n")

sub_dirs = os.walk(root_dir)
next(sub_dirs)
for dir_name, _, file_list in sub_dirs:
    for file_name in file_list:
        module_version = file_name.rstrip(".lua")
        module_name = os.path.relpath(dir_name, root_dir)
        f.write("hide-version %s/%s\n" % (module_name, module_version))
