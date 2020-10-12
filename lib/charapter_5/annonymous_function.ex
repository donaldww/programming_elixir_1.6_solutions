defmodule AnnonymousFunction do
  @moduledoc false

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

end
