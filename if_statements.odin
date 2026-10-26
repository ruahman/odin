package main

import "core:fmt"


main :: proc() {
	is_happy := false
	if is_happy {
		fmt.println("we are happy")
	} else {
		fmt.println("we are not happy")
	}
	a := 5
	if a > 5 {
		fmt.println("case1")
	} else if a < 5 {
		fmt.println("case 2")
	} else {
		fmt.println("case 3")
	}
	if b := 4; b < 8 {
		fmt.println("you can declare variables in if")
	}
}
