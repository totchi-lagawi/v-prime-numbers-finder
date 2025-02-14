module main

import os
import time

fn main() {
	max := os.input("Enter the max number : ").u32()

	start_time := time.now()

	// Array containing the found prime numbers
	mut prime_numbers := []u32{cap: int(max)}

	// Little trick to avoid having to compute every multiple of two
	if max >= 2 {
		prime_numbers << 2
	}

	// Loop over every number between 3 and max, except for the multiples of two (that aren't prime)
	for current_number := u32(3); current_number <= max; current_number += 2 {
		mut is_prime := true

		// Loop over every prime numbers smaller than the square root
		for i in prime_numbers {
			if i*i > current_number {
				break
			}
			
			// If the current number is divisible by i
			if current_number % i == 0 {
				// Then it isn't prime
				is_prime = false
				break
			}
		}

		// If it wasn't divisible by any number
		if is_prime {
			// Then it is prime
			prime_numbers << current_number
		}
	}
	
	// Save the elapsed time in a variable since printing takes much time
	elapsed_time := time.since(start_time)
	
	// Show results
	println("Finished!")
	println("Found numbers : ${prime_numbers}")
	println("Elapsed time : ${elapsed_time}")
}