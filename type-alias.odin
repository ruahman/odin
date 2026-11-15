package main

import "core:fmt"
import "core:math"

// A basic type alias: Temperature and f64 are the same type.
Temperature :: f64

// An alias can name another alias.
Temp :: Temperature

// Named arrays are aliases too, not distinct types.
Vector :: [3]f64

// A named struct is always distinct, but aliasing the name
// keeps the same type.
Point :: struct {
	x, y: f64,
}
Coord :: Point

main :: proc() {
	// Compile-time checks: an alias equals its original type.
	#assert(Temperature == f64)
	#assert(Temp == Temperature)
	#assert(Vector == [3]f64)
	#assert(Coord == Point)
	fmt.println("temperature == f64:", Temperature == f64)
	fmt.println("Temp == Temperature:", Temp == Temperature)
	fmt.println("Vector == [3]f64:", Vector == [3]f64)
	fmt.println("Coord == Point:", Coord == Point)

	// Alias values mix with the underlying type freely.
	t: Temperature = 36.6
	fmt.println("temp:", t)
	fmt.println("temp + 1.5:", t + 1.5)

	// Aliases document intent in procedure signatures while
	// staying interchangeable with the underlying type.
	speed: Temperature = 60.25
	hours: f64 = 2
	trip := f64(speed) * hours
	fmt.println("trip distance:", trip)

	// Aliasing an array keeps array programming behavior.
	v: Vector = {1, 2, 3}
	w: [3]f64 = {2, 2, 2}
	fmt.println("v + w:", v + w)

	// A Coord is a Point, and vice versa.
	p: Point = Point{1, 2}
	q: Coord = Point{3, 4}
	fmt.println("p:", p)
	fmt.println("q:", q)

	// Aliases work as parameter types with no conversion.
	distance :: proc(a, b: Point) -> f64 {
		dx := b.x - a.x
		dy := b.y - a.y
		return math.sqrt(dx*dx + dy*dy)
	}
	fmt.println("distance:", distance(p, q))
}

