defmodule LogLevel do
  def to_label(level, legacy?) do
    # Please implement the to_label/2 function
    cond do
      level == 0 and legacy? == false -> :trace
      level == 1 and legacy? == true -> :debug
      level == 2 and legacy? == true -> :info
      level == 3 and legacy? == true -> :warning
      level == 4 and legacy? == true -> :error
      level == 5 and legacy? == false -> :fatal
      true  -> :unknown
    end
end

  def alert_recipient(level, legacy?) do
    # Please implement the alert_recipient/2 function
    label = to_label(level, legacy?)
    cond do
      label == :unknown and legacy? == true -> :dev1
      label == :unknown and legacy? == false -> :dev2
      label == :error or :fatal -> :ops
      true -> :ignore
    end
  end
end
