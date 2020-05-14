defmodule SelectionSort do
  def sort([]), do: []

  def sort(items, state \\ [])

  def sort([head | tail], state) do 
    {min, tail} = find_min(head, tail, [])
    sort(tail, [min | state])
  end

  def sort([], state) do
    state
    |> Enum.reverse()
  end

  defp find_min(current, [head | tail], state) do 
    if current > head do
      find_min(head, tail, [current | state])
    else
      find_min(current, tail, [head | state])
    end
  end

  defp find_min(min, [], state) do 
    {min, state}
  end 
end

values = [5,4,3,2,1]
sorted = SelectionSort.sort(values)
IO.inspect sorted

values = [5,39,47,0,5]
sorted = SelectionSort.sort(values)
IO.inspect sorted
