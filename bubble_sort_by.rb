def bubble_sort_by(arr)
  return arr if arr.length <= 1

  swap_element = true

  while swap_element
    swap_element = false
  
    if arr.all? { |x| x.is_a? Numeric }
      (arr.length - 1).times do |i|
        if arr[i] > arr[i + 1]
          arr[i],arr[i + 1] = arr[i + 1],arr[i]
          swap_element = true
        end
      end
    else
      (arr.length - 1).times do |i|
        if arr[i].size > arr[i + 1].size
          arr[i],arr[i + 1] = arr[i + 1],arr[i]
          swap_element = true
        end
      end
    end
  end
  return arr
end
