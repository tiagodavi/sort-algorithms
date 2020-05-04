def BubbleSort(data):
  temp = list(data)
  n = len(temp)
  for i in range(n):
    for j in range(n - i - 1):
      if temp[j] > temp[j+1]:
        temp[j], temp[j+1] = temp[j+1], temp[j]
  return temp

values = [5,4,3,2,1]
print(values)

ordered = BubbleSort(values)
print(ordered)
