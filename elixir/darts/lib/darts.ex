defmodule Darts do
  @type position :: {number, number}

  @radius 10
  @middle_radius 5
  @inner_radius 1

  @outside_points 0
  @radius_points 1
  @middle_radius_points 5
  @inner_radius_points 10

  @doc """
  Calculate the score of a single dart hitting a target
  """
  @spec score(position) :: integer
  def score({x, y}) do
    distance = distance_from_center({x, y})

    cond do
      distance > @radius -> @outside_points
      distance > @middle_radius -> @radius_points
      distance > @inner_radius -> @middle_radius_points
      true -> @inner_radius_points
    end
  end

  defp distance_from_center({x, y}), do: :math.sqrt(x * x + y * y)
end
