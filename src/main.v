module main

//import os
import time
import math

// fn main() {
// 	max := os.input("Enter the maximal number : ").int()
// 	start_time := time.now()

// 	mut numbers := []int{cap: max, len: max - 1, init: index + 2}
// 	mut primary_numbers := []int{}

// 	// Well I don't clearly understand that myself so good luck!
// 	for numbers.len > 0 {
// 		current_number := numbers.first()
// 		primary_numbers.insert(primary_numbers.len, current_number)

// 		for i := 1; i * current_number <= max; i++ {
			
// 			index_to_remove := numbers.index(current_number * i)

// 			if index_to_remove >= 0 {
// 				numbers.delete(index_to_remove)
// 			}
// 		}
// 	}

// 	println("Finished!")
// 	println("Found numbers : ${primary_numbers}.")
// 	println("Time elapsed ${time.since(start_time)}")
// }

const max = 9500000

fn main() {
	//max := os.input("Enter the maximal number : ").u32()
	start_time := time.now()

	mut primary_numbers := [2]

	for current_number := 3; current_number <= max; current_number += 2 {
		ceil := u32(math.cbrt(current_number)) + 1

		mut is_primary := true

		for i := 1; i <= ceil; i++ {
			result := current_number / i

			if result != u32(result) {
				is_primary = false
				break
			}
		}

		if is_primary {
			primary_numbers << current_number
		}
	}

	println("Finished!")
	println("Found numbers : ${primary_numbers}")
	println("Elapsed time : ${time.since(start_time)}")
}