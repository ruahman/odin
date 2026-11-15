package main

import "core:fmt"


// Values are 0, 1, 2 automatically.
Day :: enum {
	Monday,
	Tuesday,
	Wednesday,
	Thursday,
	Friday,
	Saturday,
	Sunday,
}

// The underlying type may be changed to save space or set
// the storage width.
Byte :: enum u8 {
	A,
	B,
	C,
}

// Explicit values; the next member follows automatically.
Status :: enum {
	Custom = 10,
	Next,
}

// The enum shorthand when you do not need named members.
// Can be useful with #partial switch.
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

	// Members are typed values you can print and compare.
	d := Day.Monday
	fmt.println("first:", Day.Monday, "second:", Day.Tuesday)

	// Explicitly assigned values continue upward.
	fmt.println("custom:", Status.Custom, "next:", Status.Next)

	// The underlying type controls the enum's size.
	fmt.println("underlying size:", size_of(Byte))

	// Enums work with switch; the case names drop the type.
	// A plain switch must cover every member, so use
	// #partial switch when you want only a few cases plus
	// a default.
	#partial switch d {
	case .Monday:
		fmt.println("Monday is 1")
	case .Thursday:
		fmt.println(".Thursday")
	case:
		fmt.println("some other day")
	}

	// Convert an enum to its underlying value, and back.
	day_value := int(Day.Friday)
	fmt.println("meeting on:", Day(day_value))

	// A switch over a value converted from a constant.
	is_weekend :: proc(day: Day) -> bool {
		#partial switch day {
		case .Saturday, .Sunday:
			return true
		case:
			return false
		}
	}

	fmt.println("day is Weekend:", is_weekend(Day.Saturday))

	// Values are comparable and ordered like the underlying
	// type, so comparisons and iteration work naturally.
	if Day.Saturday > Day.Friday {
		fmt.println("weekend day")
	}

}
