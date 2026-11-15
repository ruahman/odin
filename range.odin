package main

import "core:fmt"

main :: proc() {
	// An array to iterate over.
	numbers := [3]int{10, 20, 30}

	// Iterate over the values.
	for value in numbers {
		fmt.println(value)
	}

	// Iterate over both the index and value.
	for value, index in numbers {
		fmt.println(index, value)
	}
}

