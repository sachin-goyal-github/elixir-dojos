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
  end
end
