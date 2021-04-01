def bubble_sort(arr = [])
  b = []
  if arr.all? { |x| x.is_a? Numeric }
    arr.min(arr.max)
  else
    arr.each do |i|
      b << i.capitalize
    end
    b.min(arr.size)
  end
end



def bubble_sort_by(arr)
  return arr if arr.length <= 1

  def swap(arr)
    swap_element = true
  
    while swap_element
      swap_element = false
  
      (arr.length - 1).times do |i|
        if arr[i].length > arr[i + 1].length
          arr[i], arr[i + 1] = arr[i + 1], arr[i]
          swap_element = true
        end
      end
    end
  end

  arr
end

my_ns_arr = %w[h hi hey hiya hello]
puts bubble_sort_by(my_ns_arr)
