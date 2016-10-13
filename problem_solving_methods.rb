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

#First take the input of the array from the user 
#Figure out how long the array is (length)
#left element > right element , if left is bigger than we swap 
# if it is less than we keep it the same 
# looping until the array is sorted

def bubble_sort(arr)
 sorted = false
 until sorted
   (arr.length - 1).times do |index|
     if arr[index] > arr[index + 1]
       arr[index], arr[index + 1] = arr[index + 1], arr[index]
       sorted = true 
     end
   end
 end
 arr
end