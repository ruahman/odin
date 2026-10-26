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

}
