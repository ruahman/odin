package main

import "core:fmt"


main :: proc() {
	example_function()
	example2_function(1, 3)
	fmt.println(example3_function(2, 2))
	a, b := example4_function(5, 6)
	fmt.println(a, b)
	// Call a procedure by passing arguments.
	greet("Odin")

	// Store and use the returned value.
	sum := add(5, 7)
	fmt.println("5 + 7 =", sum)
	quotient, remainder := divide(31, 4)
	fmt.println(quotient, remainder)

	first, second := split()
	fmt.println(first, second)
}

example_function :: proc() {
	fmt.println("from function")
}

example2_function :: proc(a: int, b: int) {
	fmt.println(a + b)
}

example3_function :: proc(a: int, b: int) -> int {
	return a + b
}

example4_function :: proc(a: int, b: int) -> (x, y: int) {
	x = a / b
	y = a % b
	return x, y
}

// This procedure takes a string parameter and
// doesn't return a value.
greet :: proc(name: string) {
	fmt.printfln("Hello, {}!", name)
}

// This procedure takes two integers and
// returns their sum.
add :: proc(a, b: int) -> int {
	return a + b
}

// Divide returns both the quotient and remainder.
divide :: proc(a, b: int) -> (int, int) {
	return a / b, a % b
}

// split returns two strings.
split :: proc() -> (string, string) {
	return "Odin", "language"
}
