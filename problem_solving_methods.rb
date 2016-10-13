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

def fibs(num)
 x = 0
 y = 1
 arr = []

 num.times { 
   z = x + y 
   arr << x
   x = y
   y = z
 }
 arr
end

fibs(100)

fibs(100)[-1] == 218922995834555169026