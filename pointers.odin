package main

import "core:fmt"


main :: proc() {
	x := 5
	modify_number(&x)
	fmt.println(x)
}

modify_number :: proc(some_int: ^int) {
	some_int^ += 2
}
