package main

import "core:fmt"

main :: proc() {
	// Create an array.
	numbers := [5]int{1, 2, 3, 4, 5}

	// Create a slice that refers to part of the array.
	s := numbers[1:4]

	fmt.println(s)

	// Access elements by index.
	fmt.println("first:", s[0])

	// len returns the number of elements.
	fmt.println("len:", len(s))

	// Modifying a slice also modifies the
	// underlying array.
	s[1] = 20

	fmt.println(numbers)
}

