defmodule MyList do
  def reduce([], value, _) do
    value
  end
  def reduce([head | tail], value, func) do
    reduce(tail, func.(head, value), func)
  end

  def mapSum([], _), do: 0
  def mapSum([head | tail], func) do
    func.(head) + mapSum(tail, func)
  end

  def _max([], value), do: value
  def _max([head | tail], value) do
    if head > value, do: _max(tail, head), else: _max(tail, value) 
  end
  def max([head | tail]), do: _max([head | tail], head)
end
