a = [1,3,7,2,9]

def selectionSort(items):
  temp = items[::]
  for i in range(len(temp)):
    min_idx = i
    for j in range(i+1, len(temp)):
      if temp[min_idx] > temp[j]:
        min_idx = j
    temp[i], temp[min_idx] = temp[min_idx], temp[i]
  return temp

sortedA = selectionSort(a)
print(sortedA)
