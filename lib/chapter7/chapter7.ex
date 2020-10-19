defmodule Chapter6 do

  # Exercise: ModulesAndFunctions-4
  # Implementation 1
  def sum_1(0), do: 0
  def sum_1(n), do: sum_1(n-1) + n

  # Implementation 2
  def sum_2(n) when n == 0, do: 0
  def sum_2(n) when n != 0, do: sum_2(n-1) + n

  # Exercise: ModulesAndFunctions-5
  def gdc(x, y) when x > 0 and y == 0, do: y
  def gdc(x, y) when x > 0 and y > 0, do: rem(x,y)

  # Exercise: ModulesAndFunctions-6
  # Couldn't get exactly the same output from the book:
  # My output:
  #  "Is it 501"
  #  "Is it 251"
  #  "Is it 376"
  #  "Is it 314"
  #  "Is it 283"
  #  "Is it 267"
  #  "Is it 275"
  #  "Is it 271"
  #  "Is it 273"
  #  273
  def guess(actual, range) do
    div(Enum.count(range), 2) + Enum.min(range)
    |> try_guessing(actual, range)
  end

  defp try_guessing(guess, result, _) when result == guess do
    print_is_it(guess)
    IO.inspect(guess)
  end
  defp try_guessing(guess, result, range) when result > guess do
    print_is_it(guess)
    new_range = guess..Enum.max(range)
    guess(result, new_range)
  end
  defp try_guessing(guess, result, range) when result < guess do
    print_is_it(guess)
    new_range = Enum.min(range)..guess
    guess(result, new_range)
  end

  defp print_is_it(value), do: "Is it #{value}" |> IO.inspect()

  # Exercise: ModulesAndFunctions-7
  # – Convert a float to a string with two decimal digits. (Erlang)
  def float_to_string_2(my_float) when is_float(my_float), do: :erlang.float_to_binary(1200.00, decimals: 2)

  # – Get the value of an operating-system environment variable. (Elixir)
  def system_time(), do: System.os_time()
  def system_pid(), do: System.pid()

  # – Return the extension component of a file name (so return .exs if given"dave/test.exs"). (Elixir)
  #not done :(

  # – Return the process’s current working directory. (Elixir)
  #  def system_cwd_deprecated(), do: System.cwd()
  def system_cwd(), do: File.cwd()

  # – Convert a string containing JSON into Elixir data structures. (Just find; don’t install.)
  def json_to_map(json) do
    Poison.decode(json) |> get_map_value()
  end

  defp get_map_value({:ok, map_value}) do
    map_value
  end
  defp get_map_value({:error, _}) do
    "This is not a valid json"
  end

  # – Execute a command in your operating system’s shell.
  def system_execute_shell(command), do: System.cmd(command, [])
end
