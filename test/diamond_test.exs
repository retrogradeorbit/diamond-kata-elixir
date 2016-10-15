defmodule DiamondTest do
  use ExUnit.Case
  doctest Diamond

  test "the truth" do
    assert 1 + 1 == 2
    assert Diamond.char_for(0) == "A"
    assert Diamond.char_for(25) == "Z"
  end
end
