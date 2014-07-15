defmodule EratosthenesSieveTest do
  use ExUnit.Case

  test "primes" do
    primes_under_7 = [2, 3, 5, 7]
    primes_under_10 = primes_under_7
    primes_under_60 = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37,
      41, 43, 47, 53, 59]
    primes_under_100 = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37,
      41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
    primes_under_120 = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37,
      41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103,
      107, 109, 113]


    # should return an empty list when passed 1
    assert [] == EratosthenesSieve.primes(1)

    # should return all the primes 7 and under
    assert primes_under_7 == EratosthenesSieve.primes(7)
    # should return all the primes 10 and under
    assert primes_under_10 == EratosthenesSieve.primes(10)
    # should return all the primes 60 and under
    assert primes_under_60 == EratosthenesSieve.primes(60)
    # should return all the primes 100 and under
    assert primes_under_100 == EratosthenesSieve.primes(100)
    # should return all the primes 120 and under
    assert primes_under_120 == EratosthenesSieve.primes(120)
  end

  test "remove_multiples_of" do
    numbers = [2,3,4,5,6,7,8,9]
    # should remove all numbers that are a multiple
    # of the first argument
    assert [2,3,5,7,9] == EratosthenesSieve.remove_multiples_of(2, numbers)
    assert [2,3,4,5,7,8] == EratosthenesSieve.remove_multiples_of(3, numbers)
  end
end
