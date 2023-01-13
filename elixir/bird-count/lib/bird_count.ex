defmodule BirdCount do
  def today([]), do: nil
  def today([today | _other]), do: today

  def increment_day_count([]), do: [1]
  def increment_day_count([today | other]), do: [today + 1 | other]

  def has_day_without_birds?(counts), do: Enum.any?(counts, fn c -> c == 0 end)

  def total(counts), do: Enum.sum(counts)

  def busy_days(counts), do: Enum.count(counts, fn c -> c > 4 end)
end
