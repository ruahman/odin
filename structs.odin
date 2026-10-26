package main

import "core:fmt"

Person :: struct {
	name: string,
	age:  int,
}

main :: proc() {
	bob := Person{"Bom", 44}
	fmt.println(bob)
	change_name(&bob)
	fmt.println(bob)

}

change_name :: proc(some_person: ^Person) {
	some_person.name = "john"
}
