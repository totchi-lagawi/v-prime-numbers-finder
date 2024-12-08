# v-primary-numbers-finder
This is the result of a challenge from one of my friends, to create the fastest prime number finder in V. Mine takes ~2.5s for 25 millions on a Core i3 computer with 16 Gib DDR4 RAM (without `-prod` :D).

# Approach
The base idea is based on the idea of that if a number can't be divided by any of the prime numbers between 0 and it's square root, then it is prime. It was proved to be faster than Eratosthenes' Sieve due to array manipulation, although another friend of mine managed to overcome these limitations.