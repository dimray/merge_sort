def merge_sort(unsorted_array)
  if unsorted_array.length <= 1
    return unsorted_array
  else
    mid = unsorted_array.length/2
    first_half = merge_sort(unsorted_array.slice(0...mid))
    second_half = merge_sort(unsorted_array.slice(mid...unsorted_array.length))
    merge(first_half, second_half)
  end
end

def merge(first_half, second_half)
  sorted_array = []
  while first_half.length > 0 && second_half.length > 0 do
    if first_half[0] < second_half[0]
      sorted_array.push(first_half.shift)
    else
      sorted_array.push(second_half.shift)
    end
  end
  return sorted_array.concat(first_half).concat(second_half)
  
end

myarray = [2,5,4,1,7,6,3]
p merge_sort(myarray)