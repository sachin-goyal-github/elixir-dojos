# http://codekata.com/kata/kata04-data-munging/
# Part One: Weather Data
# In weather.dat you’ll find daily weather data for Morristown, NJ for June 2002.
# Download this text file, then write a program to output the day number (column one)
# with the smallest temperature spread (the maximum temperature is the second column,
# the minimum the third column).

defmodule Kata do
  def main do
    lines = []

    File.stream!("./katas/data-munging/weather.dat")
    |> Stream.with_index()
    |> Stream.map(fn {line, i} ->
      lines ++ [line]
    end)
    |> Stream.run


    IO.inspect(lines)
  end
end
