package main

import "core:fmt"
import "core:unicode/utf8"

main :: proc() {
	// A rune literal.
	r := 'A'
	fmt.println(r)

	// Untyped rune constants convert to integers.
	fmt.println(int(r))

	// Multi-byte Unicode characters work too.
	acc := 'é'
	fmt.println(acc)
	fmt.println(int(acc))

	// Characters outside the ASCII range.
	kanji := '世'
	fmt.println(kanji)
	fmt.println(int(kanji))

	// Runes are comparable and ordered.
	if 'A' <= r && r <= 'Z' {
		fmt.println("A is uppercase")
	}

	// Iterate a string to get runes. The index is the
	// byte offset, not the rune index.
	word := "café"
	fmt.println(len(word)) // byte length

	for r, i in word {
		fmt.println(i, r)
	}

	// Convert a string to a []rune slice.
	runes := utf8.string_to_runes(word)
	defer delete(runes)

	// Convert back to a string.
	back := utf8.runes_to_string(runes)
	defer delete(back)
	fmt.println(back)

	// Decode a single rune from a string at a byte
	// offset. The second return value is the number of
	// bytes consumed.
	r2, size := utf8.decode_rune_in_string(word)
	fmt.println(r2, size) // 'c', 1
}
