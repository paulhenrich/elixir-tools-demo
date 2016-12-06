defmodule Demo do
  # stolen from my "Programming Elixir" exercises
  def sum(list), do: sum(list, 0)

  defp sum([], total),             do: total
  defp sum([ head | tail], total), do: sum(tail, head + total)
end
