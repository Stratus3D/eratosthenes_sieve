defmodule EratosthenesSieve do
  use Application

  # See http://elixir-lang.org/docs/stable/Application.Behaviour.html
  # for more information on OTP Applications
  def start(_type, _args) do
    {:ok, self()}
  end

  def stop(_args) do
    :ok
  end

  # Use the Sieve of Eratosthenes algorithm to compute
  # prime numbers
  def primes(max) when max < 2 do
    []
  end

  def primes(max) do
    # First, we generate a list of numbers from 2 to
    # the max (1 is not considered prime)
    possible_values = 2..max
    # Let p equal 2, the first prime number we start with
    p = 2

    # We now compute the prime numbers in the range of
    # possible_values by removing the numbers we know are
    # not prime. To determine which numbers are not prime
    # we simply check to if they are a mulitple of a
    # prime and also greater than the prime. We skipped 1
    # by starting at 2 so we add 1 as the first item in
    # our list of primes
    remove_multiples_of_primes(p, possible_values)
  end

  def remove_multiples_of_primes(p, possible_values) do
    # If a number in the range of possible primes is a
    # multiple of p and greater than two, remove it. We
    # then reassign p to the next highest value in the
    # new list, which is a prime. We then repeat removal
    # of values that are multiples of and greater than
    # its value
    new_values = remove_multiples_of(p, possible_values)
    case find_next_prime(p, new_values) do
      [] ->
        new_values
      [new_prime|_] ->
        remove_multiples_of_primes(new_prime, new_values)
    end
  end

  def find_next_prime(p, values) do
    # Find the next prime number in the list. If a number
    # is greater than p return it. If we are at the end
    # of the list, no number will be greater than p, in
    # which case we return {:error, :no_prime}.
    Enum.filter(values, &(&1 > p))
  end

  # Remove multiples of p that are greater than p
  def remove_multiples_of(p, values) do
    for value <- values, 0 != rem(value, p) or value <= p, do: value
  end
end
