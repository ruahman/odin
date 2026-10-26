// a package is just a colleciton of files in a directory
package sandbox

import "core:fmt"

main :: proc() {
	fmt.println("hello sandbox")
	fmt.println(other_function(5))
	fmt.println(read_configuration("hello.txt", Never{}))
	fmt.println(read_configuration("hello.txt", Once{}))
	fmt.println(read_configuration("hello.txt", Every{5}))
}
