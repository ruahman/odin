package main

import "core:fmt"

// Package-level constants.
message :: "constant"
n :: 500000000

main :: proc() {
	SCREEN_HEIGHT :: 1080
	fmt.println(SCREEN_HEIGHT)
	SCREEN_WIDTH: int : 1088 // you can also declare the type
	fmt.println(SCREEN_WIDTH)
	fmt.println(message)
	// Constant expressions are evaluated at compile time.c
	d :: 3e20 / n
	fmt.println(d)
}
