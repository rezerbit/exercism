defmodule LanguageList do
  def new(), do: []
  def add(list, language), do: [language | list]
  def remove([head | tail] = list), do: tail
  def first([head | tail] = list), do: head
  def count(list), do: Enum.count(list)
  def exciting_list?(list), do: "Elixir" in list
end
