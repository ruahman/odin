
run file:
  odin run {{file}} -file

run-package package:
  odin run {{package}}

build file:
  odin build {{file}} -file

build-package package:
  odin build {{package}}

clean:
    find . -type f ! -name "*.odin" ! -name "justfile" ! -path "./.git/*" -delete
