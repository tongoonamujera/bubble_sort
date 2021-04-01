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

def swap(arr)
  swap_element = true

  while swap_element
    swap_element = false
    (arr.length - 1).times do |i|
      yield(arr[i], arr[i + 1]).positive?
        if arr[i].size > arr[i + 1].size
          arr[i], arr[i + 1] = arr[i + 1], arr[i]
          swap_element = true
        end
    end
  end
end

def bubble_sort_by(arr)
  return arr if arr.length <= 1

  def swap_one
    swap(arr)
  end

  arr
end
