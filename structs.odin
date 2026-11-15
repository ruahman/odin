package main

import "core:fmt"

Person :: struct {
	name: string,
	age:  int,
}

Point :: struct {
	x, y: int,
}

main :: proc() {
	bob := Person{"Bom", 44}
	fmt.println(bob)
	change_name(&bob)
	fmt.println(bob)

	// Struct literal with named fields.
	alice := Person {
		name = "Alice",
		age  = 30,
	}
	fmt.printf("%s is %d years old\n", alice.name, alice.age)

	// Named fields can be partial; others are zero.
	// bob := Person {
	// 	name = "Bob",
	// }
	fmt.printf("%s is %d years old\n", bob.name, bob.age)

	// Modify fields after creation.
	alice.age = 31
	fmt.println("name:", alice.name, "age:", alice.age)

	// Positional literal when all fields are given.
	p := Point{3, 4}
	fmt.printf("point: %d, %d\n", p.x, p.y)

	// Zero value: empty string and zero int.
	empty := Person{}
	fmt.println("zero name:", empty.name == "", "zero age:", empty.age == 0)

	// Access fields through a pointer.
	ptr := &alice
	ptr.age = 32
	fmt.println("age after pointer:", alice.age)

}

change_name :: proc(some_person: ^Person) {
	some_person.name = "john"
}
