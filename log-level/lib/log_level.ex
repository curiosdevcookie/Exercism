defmodule LogLevel do
  def to_label(level, legacy?) do
    # Please implement the to_label/2 function
    case {level,legacy?} do
      {0, false}-> :trace
      {1, _}-> :debug
      {2, _}-> :info
      {3, _}-> :warning
      {4, _}-> :error
      {5, false}-> :fatal
      _ -> :unknown
    end
end

  def alert_recipient(level, legacy?) do
    # Please implement the alert_recipient/2 function
    label = to_label(level, legacy?)
    # cond do
    #   label == :unknown and legacy? -> :dev1
    #   label == :unknown and not legacy? -> :dev2
    #   label in [:error, :fatal] -> :ops
    #   true -> false
    # end

    case {label, legacy?} do
      {:unknown, true} -> :dev1
      {:unknown, false} -> :dev2
      {:error, _} -> :ops
      {:fatal, _} -> :ops
      _-> false
    end
  end
end
