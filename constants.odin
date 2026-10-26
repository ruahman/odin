package main

import "core:fmt"

main :: proc() {
	SCREEN_HEIGHT :: 1080
	fmt.println(SCREEN_HEIGHT)
	SCREEN_WIDTH: int : 1088 // you can also declare the type
	fmt.println(SCREEN_WIDTH)
}
