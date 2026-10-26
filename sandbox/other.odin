// a package is just a collection of files in a directory
package sandbox

import "core:fmt"

other_function :: proc(x: int) -> int {
	for i in 0 ..< 10 {
		fmt.println(i)
	}
	return x + 1
}

Configuration :: struct {
	filename:         string,
	interval:         Interval,
	url:              string,
	calculated_later: f32,
}

Interval :: union {
	Never,
	Once,
	Every,
}

Never :: struct {}
Once :: struct {}
Every :: struct {
	seconds: int,
}

read_configuration :: proc(filename: string, interval: Interval) -> (config: Configuration) {
	config.filename = filename
	config.interval = interval
	switch i in interval {
	case Never:
		fmt.println("never print")
	case Once:
		fmt.println("once print")
	case Every:
		fmt.println("every ", i.seconds, " seconds")
	}
	if every, is_every := interval.(Every); is_every {
		fmt.println("I run every: ", every.seconds, " seconds")
	}
	return config
}
