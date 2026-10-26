package main

import "core:fmt"

main :: proc() {
	x := 5 // declare
	fmt.println(x)
	x = 8 // set
	fmt.println(x)
	y: int = 12 // declaritive
	fmt.println(y)
	z: f32
	z = 3.16
	fmt.println(z)
	a, b := 5, 16
	fmt.println(a, b)
}
