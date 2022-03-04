defmodule Secrets do
  use Bitwise

  def secret_add(x), do: &(&1 + x)
  def secret_subtract(x), do: &(&1 - x)
  def secret_multiply(x), do: &(&1 * x)
  def secret_divide(x), do: &div(&1, x)

  def secret_and(x), do: &(&1 &&& x)
  def secret_xor(x), do: &bxor(&1, x)

  def secret_combine(func1, func2), do: &(&1 |> func1.() |> func2.())
end
