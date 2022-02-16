defmodule FunctionsDojos do
  def main do
    get_sum = fn x, y -> x + y end
    IO.puts(get_sum.(4, 5))

    get_less = &(&1 - &2)
    IO.puts(get_less.(10, 4))

    print_sum = fn
      {x, y} -> IO.puts(x + y)
      {x, y, z} -> IO.puts(x + y + z)
    end

    IO.puts(print_sum.({4, 5}))
    IO.puts(print_sum.({4, 5, 6}))

    IO.puts(fun_with_default_values())
    IO.puts(fun_with_default_values(3))
    IO.puts(fun_with_default_values(3, 4))

    IO.puts(factorial(4))
    IO.puts(factorial(3))
    IO.puts(factorial(2))
  end

  def fun_with_default_values(x \\ 1, y \\ 2) do
    x + y
  end

  def factorial(num) do
    if num <= 1 do
      1
    else
      result = num * factorial(num - 1)
      result
    end
  end
end
