def bubble_sort_by(item_array)
  begin
    swapped = false
    for i in 0...(item_array.length - 1)      
      block_result = yield(item_array[i],item_array[i+1])
      if block_result > 0
        item_array[i+1],item_array[i] = item_array[i],item_array[i+1]
	swapped = true
      end
    end
  end until !swapped
  item_array
end
