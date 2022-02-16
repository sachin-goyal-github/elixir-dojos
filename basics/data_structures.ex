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

  def lists do
    list1 = [1, 2, 3, 4]
    list2 = [5, 6, 7, 8]

    list3 = list1 ++ list2

    list4 = list3 -- list1

    IO.puts(6 in list4)

    [head | tail] = list3

    IO.puts("Head #{head}")
    IO.write("Tail: ")
    IO.inspect(tail)

    words = ["One", "Two", "Three"]

    Enum.each(words, fn word ->
      IO.puts(word)
    end)

    words = List.delete_at(words, 1)
    IO.puts(words)
    words = List.insert_at(words, 1, "Two")
    IO.puts(words)


    [_, [_, a]] = [10, [20, 30]]
    IO.puts(a)
  end

  def maps do
    kv = %{"key1" => "value1", "key2" => "value2", "key3" => "value3"}
    IO.puts(kv["key1"])

    kv = %{:key1 => "value1", :key2 => "value2", :key3 => "value3"}
    IO.puts(kv[:key1])

    kv = %{1 => "value1", 2 => "value2", 3 => "value3"}
    IO.puts(kv[1])

    kv = %{1 => 1, 2 => "value2", 3 => 2}
    IO.puts(kv[1])
    IO.puts(kv[2])

  end
end
