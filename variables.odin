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
	h, i := 5, 16
	fmt.println(h, i)
	// Declare a variable with type inference.
	a := "initial"
	fmt.println(a)

	// Declare multiple variables at once.
	b, c := 1, 2
	// fmt.println(b, c)

	// The compiler infers the type from the value.
	d := true
	fmt.println(d)

	// Variables declared without an initializer
	// receive the zero value of their type.
	e: int
	fmt.println(e)

	// You can also specify the type explicitly.
	f: string = "apple"
	fmt.println(f)
}
