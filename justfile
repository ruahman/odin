
run file:
  odin run {{file}} -file

build file:
  odin build {{file}} -file

clean:
    find . -type f ! -name "*.odin" ! -name "justfile" ! -path "./.git/*" -delete
