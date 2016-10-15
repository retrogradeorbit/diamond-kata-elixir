defmodule Positional do
  def char_for_row(n, y) when y<=n do
    <<?A + y>>
  end

  def char_for_row(n, y) do
    <<?A + 2 * n - y>>
  end

  def char_at(n, x, y) when x+y==n or x-y==n or y-x==n or x+y==n*3 do
    char_for_row(n, y)
  end

  def char_at(_, _, _) do
    " "
  end

  def diamond_row(n, y) do
    Enum.map(0..2*n, &(char_at(n,&1,y))) ++ ["\n"]
  end

  def diamond(n) do
    Enum.map(0..2*n, &(diamond_row(n, &1)))
  end

  def main([n | _]) do
    {int, ""} = Integer.parse(n)
    int |> diamond |> List.flatten |> Enum.join("") |> IO.puts
  end
end
