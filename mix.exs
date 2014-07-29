defmodule EratosthenesSieve.Mixfile do
  use Mix.Project

  def project do
    [ app: :eratosthenes_sieve,
      version: "0.1.0",
      elixir: "~> 0.14.0",
      name: "Eratosthenes' Sieve",
      source_url: "https://github.com/Stratus3D/eratosthenes_sieve",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    []
  end

  # Returns the list of dependencies in the format:
  # { :foobar, "~> 0.1", git: "https://github.com/elixir-lang/foobar.git" }
  defp deps do
    [{:ex_doc, github: "elixir-lang/ex_doc"}]
  end
end
