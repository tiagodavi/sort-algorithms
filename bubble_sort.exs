defmodule BubbleSort do 

  def sort(list) do
    total_items = length(list)
    case total_items do
      0 -> []
      1 -> list
      _ -> sort(list, [], total_items)
    end
  end 

  def sort([h1, h2 | tail], temp, total) do
    if h1 > h2 do
      sort([h1 | tail], [h2 | temp], total)
    else
      sort([h2 | tail], [h1 | temp], total)
    end
  end 

  def sort([head | tail], temp, total) do
   sort(tail, [head | temp], total)
  end 

  def sort([], temp, total) when total > 0 do
    Enum.reverse(temp)
    |> sort([], total - 1)
  end 

  def sort([], temp, 0) do 
    Enum.reverse(temp)
  end 
end 

values = [5,4,3,2,1]
IO.inspect values
IO.inspect BubbleSort.sort(values)

values = [55,1,49,33,2,10]
IO.inspect values
IO.inspect BubbleSort.sort(values)

values = [23]
IO.inspect BubbleSort.sort(values)

values = []
IO.inspect BubbleSort.sort(values)
