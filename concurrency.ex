defmodule ConcurrencyDojos do
  def main do
    spawn(fn -> loop(30, 1) end)
    spawn(fn -> loop(50, 1) end)

    send(self(), {:english, "Sachin"})

    receive do
      {:french, name} ->
        IO.puts("Bonjour #{name}")

      {:english, name} ->
        IO.puts("Hello #{name}")

      500 ->
        IO.puts("Time up")
    end
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
