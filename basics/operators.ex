defmodule OperatorsDojo do
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
