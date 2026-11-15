
run file:
  odin run {{file}} -file

run-package package:
  odin run {{package}}

build file:
  odin build {{file}} -file

debug file:
  odin build {{file}} -file -out:{{file}}.debug -o:none -debug
  
build-package package:
  odin build {{package}}

debug-package package:
  odin build {{package}} -debug

check-package package=".":
  odin check {{package}}

check file=".":
  odin check {{file}} -file

clean:
    find . -type f ! -name "*.odin" ! -name "justfile" ! -path "./.git/*" -delete
