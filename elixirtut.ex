defmodule BasicDojo do
  def main do
    i = 1
    IO.puts(is_integer(i))

    f = 1.2
    IO.puts(is_float(f))

    a = :Something
    IO.puts(is_atom(a))
  end
end

defmodule InputDojo do
  def main do
    name = IO.gets("What is your name? ") |> String.trim()
    IO.puts("Hello #{name}")
  end
end

defmodule StringDojo do
  def main do
    str = "Some string"
    IO.puts("#{String.reverse(str)}")
    IO.puts(String.at(str, 2))

    IO.puts("Contcatenating" <> " " <> "Strings")
  end
end

defmodule MathDojo do
  def main do
    IO.puts(4 * 10)
    IO.puts(div(12, 4))
    IO.puts(12 / 4)
  end
end

defmodule EqualityDojo do
  def main do
    IO.puts("4 === 4.0 is #{4 === 4.0}")
    IO.puts("4 == 4.0 is #{4 == 4.0}")
    IO.puts("4 == \"4\" is #{4 == "4"}")
    IO.puts("4 === \"4\" is #{4 === "4"}")
    IO.puts("4 == 5 is #{4 == 5}")

    IO.puts("4 >= 5 is #{4 >= 5}")
    IO.puts("4 <= 10 is #{4 <= 10}")
  end
end

defmodule ConditionsDojo do
  def main do
    age = 16

    if age >= 16 do
      IO.puts("Can Vote")
    else
      IO.puts("Can't Vote")
    end

    unless age === 18 do
      IO.puts("You are not 18")
    else
      IO.puts("You are 18")
    end

    cond do
      age >= 18 -> IO.puts("You can vote")
      age >= 16 -> IO.puts("You can drive")
      age >= 14 -> IO.puts("You can wait")
      true -> IO.puts("Default")
    end


    case age do
      1 -> IO.puts("Entered 1")
      2 -> IO.puts("Entered 2")
      16 -> IO.puts("Entered 16")
      true -> IO.puts("Default")
    end

    # ternary operator
    IO.puts("Ternary: #{if age > 18, do: "Can Vote", else: "Can't Vote"}")

  end
end

defmodule LogicalOperatorsDojo do
  def main do
    age = 16

    IO.puts("Vote & Drive : #{age >= 16 and age >= 18}")
    IO.puts("Vote or Drive : #{age >= 16 or age >= 18}")

    IO.puts(not true)
  end
end

defmodule TuplesDojo do
  def main do
    my_stats = {175, 6.25, :Derek}

    IO.puts is_tuple(my_stats)

    my_stats2 = Tuple.append(my_stats, 42)
    IO.puts "Age #{elem(my_stats2, 3)}"

    IO.puts "Size #{tuple_size(my_stats2)}"

    my_stats3 = Tuple.delete_at(my_stats2, 0)
    my_stats4 = Tuple.insert_at(my_stats3, 0, 1974)

    many_zeroes = Tuple.duplicate(0, 5)

    {weight, height, name} = {5, 1, "Blah"}

    IO.puts(weight)

  end
end
