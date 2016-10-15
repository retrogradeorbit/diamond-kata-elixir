defmodule DiamondTest do
  use ExUnit.Case
  doctest Diamond

  test "chars" do
    assert Diamond.char_for(0) == "A"
    assert Diamond.char_for(25) == "Z"
  end

  test "line-for" do
    assert Diamond.line_for(0,0) == "A"
    assert Diamond.line_for(3,0) == "   A"
    assert Diamond.line_for(3,1) == "  B B"
    assert Diamond.line_for(3,2) == " C   C"
    assert Diamond.line_for(3,3) == "D     D"
  end

  test "diamond_list" do
    assert Diamond.diamond_list(0) == ["A"]
    assert Diamond.diamond_list(1) == [" A", "B B", " A"]
    assert Diamond.diamond_list(2) == ["  A", " B B", "C   C", " B B", "  A"]
  end

  test "diamond" do
    assert Diamond.diamond(0) == "A"
    assert Diamond.diamond(5) ==
"     A
    B B
   C   C
  D     D
 E       E
F         F
 E       E
  D     D
   C   C
    B B
     A"
  end
end
