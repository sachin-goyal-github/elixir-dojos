defmodule LoopsDojos do
  def main do
    # due to immutability traditional loops are not possible, we use recursion
    IO.puts(loop(8, 3))

    # Enumeration
    IO.puts(Enum.all?([1, 2, 3], fn num -> num <= 4 end))
    IO.puts(Enum.any?([1, 2, 3], fn num -> num > 4 end))
    Enum.each([1, 2, 3], fn num -> IO.puts(num * 2) end)

    doubled_list = Enum.map([1, 2, 3], fn num -> num * 2 end)
    Enum.each(doubled_list, fn num -> IO.puts(num) end)

    sum_values = Enum.reduce([1, 2, 3, 4, 5], fn num, sum -> num + sum end)
    IO.puts(sum_values)

    # list comperhension
    dbl_list = for n <- [1, 2, 3], do: n * 2
    IO.inspect(dbl_list)
  end

  def loop(max, min) do
    cond do
      max === 0 ->
        nil

      max < min ->
        loop(0, min)

      true ->
        IO.puts("Num: #{max}")
        loop(max - 1, min)
    end
  end
end
