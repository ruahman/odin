package main

import "core:fmt"
import "core:strings"

main :: proc() {
	// Create a string from a literal.
	s := "Hellope!"
	fmt.println(s)

	// len returns the number of bytes.
	fmt.println("len:", len(s))

	// Indexing returns a byte (u8).
	fmt.println("first byte:", s[0])

	// + concatenates constant strings at compile time.
	fmt.println("Hello" + "pe!")

	// For variables, use strings.concatenate.
	greeting := strings.concatenate({s, ", world!"})
	fmt.println(greeting)

	// Compare strings with == and !=.
	fmt.println("equal:", s == "Hellope!")

	// Iterate over runes. Odin decodes UTF-8
	// automatically.
	for r, i in s {
		fmt.println(i, r)
	}

	// UTF-8: len counts bytes, not characters.
	word := "café"
	fmt.println("bytes:", len(word))

	// Indexing gives raw bytes. The é character
	// uses two bytes in UTF-8.
	for i in 0..<len(word) {
		fmt.println(i, word[i])
	}
}
