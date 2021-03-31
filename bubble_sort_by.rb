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

def b_sort(arr)
  return arr if arr.length <= 1

  swap_element = true

  while swap_element
    swap_element = false

    if arr.all? { |x| x.is_a? Numeric }
      (arr.length - 1).times do |i|
        arr[i] > arr[i + 1] ? (arr[i], arr[i + 1] = arr[i + 1], arr[i]) : swap_element = true
      end
    else
      (arr.length - 1).times do |i|
        arr[i].size > arr[i + 1].size ? (arr[i], arr[i + 1] = arr[i + 1], arr[i]) : swap_element = true
      end
    end
  end
  arr
end
