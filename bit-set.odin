package main

import "core:fmt"

// Element type can be an enum...
Direction :: enum {North, East, South, West}
Direction_Set :: bit_set[Direction]

// ...or a range, including a character range.
Char_Set :: bit_set['A'..='Z']
Big_Set :: bit_set[0..<128]

// The backing integer type can be chosen explicitly; it must
// cover the range. A u8 holds at most 8 elements.
Small_Explicit :: bit_set[0..<8; u8]

main :: proc() {
	a := Direction_Set{.North, .West}
	b := Direction_Set{.East, .West}

	fmt.println("a:", a)
	fmt.println("b:", b)

	// Set operations combine two sets.
	fmt.println("union:", a | b)
	fmt.println("intersection:", a & b)
	fmt.println("difference:", a - b)
	fmt.println("symmetric difference:", a ~ b)

	// Membership tests use `in` and `not_in`.
	fmt.println("North in a:", .North in a)
	fmt.println("East in a:", .East in a)

	// card() counts the elements present.
	fmt.println("cardinality of a:", card(a))

	// Sets compare by contents, regardless of literal order,
	// and subset/superset checks use the ordering operators.
	fmt.println("a equals {West, North}:", a == Direction_Set{.West, .North})
	fmt.println("a subset of {N,W,S}:", a <= Direction_Set{.North, .West, .South})

	// Character ranges work the same way; the underlying
	// values are printed as numbers.
	cs := Char_Set{'A', 'C', 'Z'}
	fmt.println("char set:", cs)
	fmt.println("'B' in cs:", 'B' in cs)
	fmt.println("'Z' in cs:", 'Z' in cs)

	// Sizes: 26 chars pack into 4 bytes, 128 elements into 16,
	// and the explicit u8 backing stays at 1 byte.
	fmt.println("size of Char_Set:", size_of(Char_Set))
	fmt.println("size of Big_Set:", size_of(Big_Set))
	fmt.println("size of Small_Explicit:", size_of(Small_Explicit))

	// += and -= add and remove single elements, handy for
	// accumulating flags.
	permissions := Direction_Set{}
	permissions += {.North}
	permissions += {.West}
	permissions -= {.North}
	fmt.println("permissions after edits:", permissions)
}

