package main

import "core:fmt"


main :: proc() {
	my_array: [5]int
	for value in my_array {
		fmt.println(value)
	}
	my_array2 := [5]int{2, 4, 7, 8, 12}
	for value in my_array2 {
		fmt.println(value)
	}
	// if you don't know the size
	my_array3 := [?]int{1, 2, 3, 4, 5, 6, 7}
	for value in my_array3 {
		fmt.println(value)
	}

	modify_array(&my_array2)
	for value in my_array2 {
		fmt.println(value)
	}

	modify_array_any_size(my_array3[:])
	for value in my_array3 {
		fmt.println(value)
	}
}

modify_array :: proc(some_array: ^[5]int) {
	some_array[2] = 99
}
modify_array_any_size :: proc(some_array: []int) {
	some_array[2] = 999
}
