def bubble_sort(num_array)
  begin
    swapped = false
    for i in 0...(num_array.length - 1)
      if num_array[i] > num_array[i+1]
	num_array[i+1],num_array[i] = num_array[i],num_array[i+1]
	swapped = true
      end
    end
  end until !swapped
  num_array
end
