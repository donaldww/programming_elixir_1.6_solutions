defmodule Book.Charapter5 do

  #   # Exercise: Functions-4 -- Anonymous_function --
  def ex_list_concat() do
    list_concat = fn(array_1, array_2) -> array_1 ++ array_2 end
    list_concat.([:a, :b],[:c, :d])
  end

  def ex_sum() do
    sum = fn (val1, val2, val3) -> val1+val2+val3 end
    sum.(1, 2, 3)
  end

  def ex_pair_tuple_to_list() do
    pair_tuple_to_list = fn ({el1, el2}) -> [el1, el2] end
    pair_tuple_to_list.({:xa, :blau})
  end

  # Exercise: Functions-2 -- Pattern match --
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

  # Exercise: Functions-3 -- Pattern match --
  def call_rem_to_fizz_buzz(value) do
    fizz_buzz(rem(value, 3), rem(value, 5), value)
  end

  # Exercise: Functions-4 -- Function as argument --
  def anonymous_function_as_argument_concat_strings do
    prefix = fn (first_word) ->
      fn (second_word) ->
        first_word <> " " <> second_word
      end
    end

    mrs = prefix.("Mrs")
    mrs.("Smith")
  end

  # Exercise: Functions-5 -- & notation --
  def enum_map_1234() do
    # Enum.map [1,2,3,4], fn x -> x + 2 end
    Enum.map [1,2,3,4], &(&1 + 2)
  end

  def enum_each_1234() do
    # Enum.each [1,2,3,4], fn x -> IO.inspect x end
    Enum.each [1,2,3,4], &(&1 |> IO.inspect)
  end

end
