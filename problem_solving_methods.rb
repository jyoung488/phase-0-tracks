def search_array(arr, n)
  i = 0
  
  while i < arr.length
  if arr[i] == n
    index = i
  end
  i += 1
end
  index
end

arr = [1, 2, 3, 4, 5]
p search_array(arr, 3)