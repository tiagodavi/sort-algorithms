def selectionSort(items):
  temp = items[::]
  for i in range(len(temp)):
    min_idx = i
    for j in range(i+1, len(temp)):
      if temp[min_idx] > temp[j]:
        min_idx = j
    temp[i], temp[min_idx] = temp[min_idx], temp[i]
  return temp

values = [1,3,7,2,9]
result = selectionSort(values)
print(result)


values = [5,39,47,0,5]
result = selectionSort(values)
print(result)
