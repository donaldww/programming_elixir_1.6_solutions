defmodule StudiesTest do
  use ExUnit.Case
  doctest Studies

  test "greets the world" do
    assert Studies.hello() == :world
  end
end
