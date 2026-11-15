package main

import "core:fmt"

main :: proc() {
	// A traditional counted loop.
	for i := 0; i < 3; i += 1 {
		fmt.println(i)
	}

	// A while-style loop.
	j := 0
	for j < 2 {
		fmt.println("while:", j)
		j += 1
	}

	// An infinite loop.
	for {
		fmt.println("infinite loop")
		break
	}

	// continue skips the rest of the current iteration.
	for i := 0; i < 3; i += 1 {
		if i == 1 {
			fmt.println("continue")
			continue
		}

		if i == 2 {
			fmt.println("break")
			break
		}
	}
}

