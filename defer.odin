package main

import "core:fmt"


main :: proc() {
	// run some code at the end of a function
	defer fmt.println("a")
	defer fmt.println("b")
	defer fmt.println("c")

	defer {
		fmt.println(1)
		fmt.println(2)
		fmt.println(3)
	}
	x := 14
	defer if x % 2 == 0 {
		fmt.println("we were defered")
	}
	{
		defer fmt.println("deffer from block")
		fmt.println("im a block")
	}
	fmt.println("this will run first")
	fmt.println("this will run second")

}
