defmodule ExceptionsDojos do
  def main do
    err =
      try do
        5 / 0
      rescue
        ArithmeticError -> "Divide by zero error"
      end

    IO.puts(err)
  end
end
