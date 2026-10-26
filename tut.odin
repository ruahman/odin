package main

import "core:fmt"

main :: proc() {
	// variables
	x := 5
	x = 8
	y: int = 12
	z: f32
	z = 5.2
	a, b := 5, 16
	fmt.println(x)
	fmt.println(y)
	fmt.println(z)
	fmt.println(a, b)

	// const
	SCREEN_HEIGHT :: 1000

	// if
	is_happy := true
	fmt.println(is_happy)
	if is_happy {
		fmt.println("we are happy")
	} else {
		fmt.println("we are not happy")
	}

	// for
	for i in 0 ..< 10 {
		fmt.println(i)
	}
	i := 10
	for i > 4 {
		fmt.printfln("for while: {}", i)
		i = i - 1
	}
	text := "hello world"
	for letter in text {
		fmt.printfln("letter: {}", letter)
	}
}
