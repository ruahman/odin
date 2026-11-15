package main

import "core:fmt"

// A union of a few basic types. The tag is stored implicitly
// and is at least one byte, so the size is rounded up.
Number :: union {
	int,
	f64,
}

// A union can also hold structs and other user types.
Value :: union {
	int,
	string,
	Result,
}

Result :: struct {
	value: int,
	ok:    bool,
}

main :: proc() {
	// Assign a member type; the tag is set automatically.
	n: Number = 10
	fmt.println("first value:", n)

	// Reassign to a different member; the tag updates.
	n = 3.14
	fmt.println("as f64:", n)

	// The size is the largest member plus the tag.
	fmt.println("size of Number:", size_of(Number))

	// A union with a string member stores it the same way.
	v: Value = "hello"
	fmt.println("string value:", v)
	fmt.println("size of Value:", size_of(Value))

	// A type switch distinguishes the active member.
	describe :: proc(x: Value) {
		switch y in x {
		case int:
			fmt.println("it's an int:", y)
		case string:
			fmt.println("it's a string:", y)
		case Result:
			fmt.println("it's a Result:", y)
		}
	}
	describe(v)

	// A type assertion extracts the value if the tag matches.
	if i, ok := v.(int); ok {
		fmt.println("as int:", i)
	}

	// Assigning a struct member works like any other.
	r: Value = Result{42, true}
	fmt.println("result:", r)

	// A union can hold nil; check before extracting.
	u: Number
	if u == nil {
		fmt.println("nil union")
	}
}

