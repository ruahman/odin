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


	// Execute a block only if the condition is true.
	if 7 % 2 == 0 {
		fmt.println("7 is even")
	} else {
		fmt.println("7 is odd")
	}

	age := 20

	// else runs when the condition is false.
	if age >= 18 {
		fmt.println("you can drive")
	} else {
		fmt.println("you cannot drive")
	}

	// Conditions can combine multiple expressions.
	if age >= 18 && age < 65 {
		fmt.println("both conditions are true")
	}
}
