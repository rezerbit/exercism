defmodule KitchenCalculator do
  @units [:milliliter, :cup, :fluid_ounce, :teaspoon, :tablespoon]
  @ml %{
    milliliter: 1,
    cup: 240,
    fluid_ounce: 30,
    teaspoon: 5,
    tablespoon: 15
  }

  def get_volume({unit, volume}) when unit in @units do
    volume
  end

  def to_milliliter({unit, volume}) when unit in @units do
    {:milliliter, @ml[unit] * volume}
  end

  def from_milliliter({:milliliter, volume}, unit) when unit in @units do
    {unit, volume / @ml[unit]}
  end

  def convert(volume_pair, unit) when unit in @units do
    volume_pair
    |> to_milliliter()
    |> from_milliliter(unit)
  end
end
