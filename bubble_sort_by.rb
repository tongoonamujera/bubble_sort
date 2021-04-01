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

  swap = ->(array) do
    swap_element = true
  
    while swap_element
      swap_element = false
      (array.length - 1).times do |i|
        yield(array[i], array[i + 1]).positive?
        if array[i].size > array[i + 1].size
          array[i], array[i + 1] = array[i + 1], array[i]
          swap_element = true
        end
      end
    end
  end

  arr
end
