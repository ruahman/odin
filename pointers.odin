package main

import "core:fmt"

Point :: struct {
	x, y: int,
}

main :: proc() {
	// & takes the address of a variable; p has type ^int.
	i := 123
	p := &i

	// ^ dereferences: read and write through the pointer.
	fmt.println("read through p:", p^)
	p^ = 1337
	fmt.println("wrote through p:", i)

	// A pointer with no address is nil.
	q: ^int
	fmt.println("zero value is nil:", q == nil)

	// Struct fields can be reached through a pointer without
	// an explicit dereference: p.x means p^.x.
	pt := Point{1, 2}
	pp := &pt
	pp.x = 99
	fmt.println("moved x:", pt.x)

	// Passing pointers lets a procedure mutate its arguments.
	swap :: proc(a, b: ^int) {
		tmp := a^
		a^ = b^
		b^ = tmp
	}
	x, y := 1, 2
	swap(&x, &y)
	fmt.println("swapped: a =", x, "b =", y)

	// Pointer to a pointer: ^^int dereferences twice.
	n := 5
	pn := &n
	ppn := &pn
	ppn^^ = 10
	fmt.println("double:", n)
}

