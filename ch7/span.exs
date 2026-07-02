defmodule MyList do
  def _span(from, [from | tail]), do: [from | tail]
  def _span(from, [head | tail]), do: _span(from, [head-1, head | tail])
  def span(from, to), do: _span(from, [to])
end
