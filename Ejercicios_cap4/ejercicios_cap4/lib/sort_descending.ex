# ordenamos la lista en orden decendiente, con divide and conquer

defmodule SortDescending do

  def descending([]), do: []
  def descending([a]), do: [a]
  def descending(list) do
    half_size = div(Enum.count(list), 2)
    {list_a, list_b} = Enum.split(list, half_size)
    merge(descending(list_a), descending(list_b))
  end

  def merge([], list_b), do: list_b
  def merge(list_a, []), do: list_a
  def merge([head_a | tail_a], list_b = [head_b | _]) when head_a >= head_b do
    [head_a | merge(tail_a, list_b)]
  end
  def merge(list_a = [head_a | _], [head_b | tail_b]) when head_b > head_a do
    [head_b | merge(list_a, tail_b)]
  end

end
