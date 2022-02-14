defmodule DataStructuresDojo do
  def tuples do
    my_stats = {175, 6.25, :Derek}

    IO.puts(is_tuple(my_stats))

    my_stats2 = Tuple.append(my_stats, 42)
    IO.puts("Age #{elem(my_stats2, 3)}")

    IO.puts("Size #{tuple_size(my_stats2)}")

    my_stats3 = Tuple.delete_at(my_stats2, 0)
    my_stats4 = Tuple.insert_at(my_stats3, 0, 1974)

    many_zeroes = Tuple.duplicate(0, 5)

    {weight, height, name} = {5, 1, "Blah"}

    IO.puts(weight)
  end
end
