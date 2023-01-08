defmodule Lasagna do
  @expected_minutes_in_oven 40
  @layer_preparation_minutes 2

  def expected_minutes_in_oven, 
    do: @expected_minutes_in_oven

  def remaining_minutes_in_oven(actual_minutes), 
    do: expected_minutes_in_oven() - actual_minutes

  def preparation_time_in_minutes(number_of_layers, layer_preparation_minutes \\ @layer_preparation_minutes), 
    do: number_of_layers * layer_preparation_minutes

  def total_time_in_minutes(number_of_layers, minutes_in_oven), 
    do: preparation_time_in_minutes(number_of_layers) + minutes_in_oven

  def alarm, do: "Ding!"
end
