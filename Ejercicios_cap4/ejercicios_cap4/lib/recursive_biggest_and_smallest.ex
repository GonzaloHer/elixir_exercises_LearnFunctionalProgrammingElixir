defmodule RecursiveBiggestAndSmallest do

def biggest(list) do
  find_biggest(list, hd(list))
end

defp find_biggest([], max), do: max

defp find_biggest([head | tail], max) do
  new_max = if head > max, do: head,
  else: max
  find_biggest(tail, new_max)
end


def smallest(list) do
  find_smallest(list, hd(list))
end

defp find_smallest([], min), do: min

defp find_smallest([head | tail], min) do
  new_min = if head < min, do: head,
  else: min
  find_smallest(tail, new_min)
end



end
