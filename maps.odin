package main

import "core:fmt"


main :: proc() {
	name_to_age := make(map[string]int)
	name_to_age["john"] = 30
	name_to_age["nick"] = 50
	name_to_age["diego"] = 45
	fmt.println(name_to_age)
	if "diego" in name_to_age {
		fmt.println("diego found")
	}
	if value, existed := name_to_age["andy"]; existed {
		fmt.println("andy existed")
		fmt.println(value)
	} else {
		fmt.println("andy does not existed")
	}
	the_age := name_to_age["z"] or_else 80
	fmt.println(the_age)

	// Create a map with string keys and int values.
	scores := make(map[string]int)

	// Add entries.
	scores["alice"] = 95
	scores["bob"] = 87

	fmt.println("alice:", scores["alice"])
	fmt.println("bob:", scores["bob"])

	// Accessing a missing key returns the zero value.
	fmt.println("zero value:", scores["charlie"])

	// Comma-ok idiom: ok is true if the key exists.
	_, ok := scores["charlie"]
	fmt.println("charlie present:", ok)

	// The "in" operator also checks for key existence.
	if "alice" in scores {
		fmt.println("alice is in the map")
	}

	fmt.println("len:", len(scores))

	// Remove a key.
	delete_key(&scores, "bob")
	fmt.println("len:", len(scores))

	scores["charlie"] = 92
	fmt.println("len:", len(scores))

	// Iterate over keys and values. Order is not
	// specified.
	for key, value in scores {
		fmt.println(key, value)
	}

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
	for i in 0 ..< len(word) {
		fmt.println(i, word[i])
	}
}
