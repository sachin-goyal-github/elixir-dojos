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

    IO.puts("Vote & Drive : #{age >= 16 and age >= 18}")
    IO.puts("Vote or Drive : #{age >= 16 or age >= 18}")

    IO.puts(not true)
  end
end
