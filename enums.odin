package main

import "core:fmt"


Directions :: enum {
	North,
	East,
	South,
	West,
}

main :: proc() {
	current_direction := Directions.East
	switch current_direction {
	case .East:
		fmt.println("going east")
	case .West:
		fmt.println("going west")
	case .North:
		fmt.println("going north")
	case .South:
		fmt.println("going south")
	}

	current_direction = Directions.South
	#partial switch current_direction {
	case .East:
		fmt.println("going east")
	case .West:
		fmt.println("going west")
	case:
		fmt.println("default")
	}

	my_grade: int = 90
	switch my_grade {
	case 0 ..= 50:
		fmt.println("below or at 50")
	case 51 ..= 90:
		fmt.println("51 or above")
	}

}
