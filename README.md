#Eratosthenses' Sieve

Stratus3D

An implementation of the ancient algorithm for finding all the prime numbers under a certain value. Implemented in Elixir. More information on this algorithm can be found on Wikipedia ([http://wikipedia.org/wiki/Sieve\_of\_Eratosthenes](http://wikipedia.org/wiki/Sieve\_of\_Eratosthenes))

##Build

This project uses Mix. To build this project run `mix`.

##Usage

To test out the application in the console run `iex -pa ebin/` in the project directory.

    iex(1)> :application.start(:eratosthenes_sieve)
    :ok
    iex(2)> EratosthenesSieve.primes(10)
    [2, 3, 5, 7]
    iex(3)> EratosthenesSieve.primes(20)
    [2, 3, 5, 7, 11, 13, 17, 19]

##Issues
No known issues. If you see something that could be improved feel free to open an issue on GitHub ([https://github.com/Stratus3D/eratosthenes\_sieve/issues](https://github.com/Stratus3D/eratosthenes\_sieve/issues))
