package main

import "core:fmt"


main :: proc() {
	for i in 0 ..< 10 {
		fmt.println("looping ", i)
	}
	for i in 0 ..= 10 {
		fmt.println("looping ", i)
	}
	// c like
	for i := 0; i < 10; i += 1 {
		fmt.println("looping ", i)
	}
	i := 0
	for i < 10 {
		fmt.println(i)
		i += 1
	}
	text := "hello"
	for letter, i in text {
		fmt.println(letter, i)
	}
	#reverse for letter, i in text {
		fmt.println(letter, i)
	}
	// slice
	for letter, i in text[1:] {
		fmt.println(letter, i)
	}
	for i in 0 ..< len(text) {
		fmt.println(rune(text[i]))
	}
	for i in 0 ..< 10 {
		if i % 2 == 1 {
			continue
		}
		fmt.println(i)
	}
}
