defmodule Chapter7 do

  # Exercise: ListsAndRecursion-1
  def mapsum(list, func) do
    {_, result} = Enum.map(list, func)
    |> Enum.map_reduce(0, fn (elem, acc) -> {elem, acc + elem} end)
    result
  end
  # OR
  def _mapsum(list, func) do
    Enum.map(list, func)
    |> Enum.sum
  end

  # Exercise: ListsAndRecursion-2
  # Also, there is Enum.max/1
  def max(list) do
    list |> Enum.map_reduce(0, fn (tuple, max) -> {tuple, get_max_from_2_values(tuple, max)} end)
  end

  defp get_max_from_2_values(value1, value2) when value1 > value2, do: value1
  defp get_max_from_2_values(_, value2), do: value2

  # Exercise: ListsAndRecursion-3
  def caesar(list, n) do
    list |> Enum.map(&(wrap_if_over_122(&1 + n)))
  end

  defp wrap_if_over_122(value) when value <= 122, do: value
  defp wrap_if_over_122(_), do: 63

  # Exercise: ListsAndRecursion-3
  def spam(from, to) do
    gen_element_list(from, to, from)
  end

  defp gen_element_list(from, to, actual) when actual == to, do: [actual]
  defp gen_element_list(from, to, actual) when actual < to, do: [actual | gen_element_list(from, to, actual + 1)]

  # ---
  # Notes:
  # Remember that List and Enum module, actually have a lot of methods that can help on the day by day
  # Like:
  #  List.flatten, List.foldl, List.foldr, List.replace_at, List.keyfind, List.keydelete, List.keyreplace,etc
  #  Enum.map, Enum.flat_map, Enum.map_reduce, Enum.sum, etc
  # ---
end
