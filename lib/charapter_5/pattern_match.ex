defmodule PatternMatch do

  def fizz_buzz(arg_1, arg_2, base) do
    ex_fn = fn
      (0, 0) -> "FizzBuzz"
      (0, _) -> "Fizz"
      (_, 0) -> "Buzz"
      (_, _) -> base
    end

    ex_fn.(arg_1, arg_2)
  end
  def fizz_buzz_pretty(0, 0, _), do: "FizzBuzz"
  def fizz_buzz_pretty(_, 0, _), do: "Buzz"
  def fizz_buzz_pretty(0, _, _), do: "Fizz"
  def fizz_buzz_pretty(_, _, base), do: base

  def call_rem_to_fizz_buzz(value) do
    fizz_buzz(rem(value, 3), rem(value, 5), value)
  end

end
