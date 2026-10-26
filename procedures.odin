package main

import "core:fmt"


main :: proc() {
	example_function()
	example2_function(1, 3)
	fmt.println(example3_function(2, 2))
	a, b := example4_function(5, 6)
	fmt.println(a, b)
}

example_function :: proc() {
	fmt.println("from function")
}

example2_function :: proc(a: int, b: int) {
	fmt.println(a + b)
}

example3_function :: proc(a: int, b: int) -> int {
	return a + b
}

example4_function :: proc(a: int, b: int) -> (x, y: int) {
	x = a / b
	y = a % b
	return x, y
}
