defmodule Diamond do
  def char_for(row) do
    <<?A + row >>
  end

  def spaces(n) do
    String.duplicate(" ", n)
  end

  def line_for(order, 0) do
    spaces(order) <> char_for(0)
  end

  def line_for(order, row) do
    spaces(order - row) <> char_for(row) <> spaces(2 * row - 1) <> char_for(row)
  end

  def diamond (0) do
    ["A"]
  end

  def diamond (n) do
    Enum.map(0..n, &(line_for(n, &1))) ++ Enum.map(n-1..0, &(line_for(n, &1)))
  end
end
