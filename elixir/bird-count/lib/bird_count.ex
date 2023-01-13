defmodule BirdCount do
  @busy_day_threshold 5

  def today([]), do: nil
  def today([today | _other]), do: today

  def increment_day_count([]), do: [1]
  def increment_day_count([today | other]), do: [today + 1 | other]

  def has_day_without_birds?([]), do: false
  def has_day_without_birds?([0 | _]), do: true
  def has_day_without_birds?([_today | other]), do: has_day_without_birds?(other)

  def total([]), do: 0
  def total([today | other]), do: today + total(other)

  def busy_days([]), do: 0
  def busy_days([today | other]) when today >= @busy_day_threshold, do: 1 + busy_days(other)
  def busy_days([_today | other]), do: busy_days(other)
end
