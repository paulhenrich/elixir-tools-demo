defmodule Demo do
  def sum(list), do: sum(list, 0)

  defp sum([], total),             do: total
  defp sum([ head | tail], total), do: sum(tail, head + total)

  def sum2(numbers) do
    Enum.reduce(numbers, 0, fn(x, total) -> x + total end)
  end

  def square(num) do
    num * num
  end

  def bad_square(10) do
    square(10) * -1
  end
  def bad_square(num) do
    square(num)
  end
end
