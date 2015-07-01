defmodule Chop do
  def guess(actual, range=low..high), do: guess(actual, range, low + div(high - low, 2))

  def guess(actual, _, actual), do: actual

  def guess(actual, _..high, guessed) when guessed < actual do
    IO.puts "Mmm ... #{guessed}?"
    guess(actual, guessed..high, guessed + div(high - guessed, 2))
  end
  
  def guess(actual, low.._, guessed) when guessed > actual do
    IO.puts "Mmm ... #{guessed}?"
    guess(actual, low..guessed, low + div(guessed - low, 2))
  end
end

IO.puts Chop.guess(273, 1..1000)
