defmodule HappyPlaceTest do
  use ExUnit.Case
  doctest HappyPlace

  test "greets the world" do
    assert HappyPlace.hello() == :world
  end
end
