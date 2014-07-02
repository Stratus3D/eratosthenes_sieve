defmodule EratosthenesSieve do
  use Application.Behaviour

  # See http://elixir-lang.org/docs/stable/Application.Behaviour.html
  # for more information on OTP Applications
  def start(_type, _args) do
    EratosthenesSieve.Supervisor.start_link
  end

  # Use the Sieve of Eratosthenes algorithm to compute
  # prime numbers
  def primes(max) do
    # First, we generate a list of numbers from 1 to
    # the max
    possible_values = :list.seq(1, max)

    # Let p equal 2, the first prime number we start with
    p = 2

    # if a number in the range of possible primes is a
    # multiple of p and greater than two, remove it. We
    # then reassign p to the next highest value in the
    # new list, which is a prime. We then repeat removal
    # of values that are multiples of and greater than
    # its value
    remove_multiples_of_primes(p, possible_values)
  end

  def remove_multiples_of_primes(p, possible_values) do
    new_values = remove_multiples_of(p, possible_values)
    case find_next_prime(p, new_values) do
      {:error, :no_prime} ->
        new_values
      new_prime ->
        remove_multiples_of_primes(new_prime, new_values)
    end
  end

  def find_next_prime(p, new_values) do
    # not implemented
  end

  # remove multiples of p that are greater than p
  def remove_multiples_of(p, list) do
    lc value inlist list, 0 == rem(value, p), do: value
  end
end
