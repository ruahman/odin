package main

import "core:fmt"
import "core:slice"


main :: proc() {
	my_expanding_array := make([dynamic]int)
	// delete memory for later, but you don't have to do in in main function
	defer delete(my_expanding_array)
	append(&my_expanding_array, 5)
	append(&my_expanding_array, 3)
	append(&my_expanding_array, 1)
	append(&my_expanding_array, 99, 50, 70, 60)
	for element in my_expanding_array {
		fmt.println(element)
	}
	pop(&my_expanding_array)
	for element in my_expanding_array {
		fmt.println(element)
	}
	slice.sort(my_expanding_array[:])
	for element in my_expanding_array {
		fmt.println("sorted: ", element)
	}

}
