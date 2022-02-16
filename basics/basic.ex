defmodule BasicDojo do
  def data_types do
    i = 1
    IO.puts(is_integer(i))

    f = 1.2
    IO.puts(is_float(f))

    a = :Something
    IO.puts(is_atom(a))
  end

  def inputs do
    name = IO.gets("What is your name? ") |> String.trim()
    IO.puts("Hello #{name}")
  end

  def strings do
    str = "Some string"
    IO.puts("#{String.reverse(str)}")
    IO.puts(String.at(str, 2))

    IO.puts("Contcatenating" <> " " <> "Strings")
  end

  def maths do
    IO.puts(4 * 10)
    IO.puts(div(12, 4))
    IO.puts(12 / 4)
  end
end
