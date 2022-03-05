defmodule LogLevel do
  @labels %{
    0 => :trace,
    1 => :debug,
    2 => :info,
    3 => :warning,
    4 => :error,
    5 => :fatal
  }

  @supported_in_legacy 1..4

  def to_label(level, false),
    do: Map.get(@labels, level, :unknown)

  def to_label(level, true) when level in @supported_in_legacy,
    do: Map.get(@labels, level)

  def to_label(_level, true),
    do: :unknown

  def alert_recipient(level, legacy?) do
    level
    |> to_label(legacy?)
    |> alert(legacy?)
  end

  defp alert(label, _legacy?) when label in [:error, :fatal], do: :ops
  defp alert(:unknown, true), do: :dev1
  defp alert(:unknown, false), do: :dev2
  defp alert(_label, _legacy?), do: false
end
