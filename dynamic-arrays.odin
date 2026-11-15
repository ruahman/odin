package main

import "core:fmt"

main :: proc() {
	// Declare an empty dynamic array.
	numbers: [dynamic]int

	fmt.println(numbers)

	// Append elements.
	append(&numbers, 10)
	append(&numbers, 20, 30)

	fmt.println(numbers)

	// len returns the number of elements.
	fmt.println("len:", len(numbers))

	// cap returns the current capacity.
	fmt.println("cap:", cap(numbers))

	// Remove the last element.
	pop(&numbers)

	fmt.println(numbers)
}
