defmodule MyList do
  _total = 0
#  def sum(list), do: _sum(list, 0)
#  def _sum([], total), do: total
#  def _sum([head | tail], total), do: _sum(tail, total + head)
  def sum([]), do: 0
  def sum([head | tail]) do
    head + sum(tail)
  end
end
