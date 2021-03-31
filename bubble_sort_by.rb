def bubble_sort(arr = [])
  b = []
  if arr.all? { |x| x.is_a? Numeric }
    arr.min(arr.max)
  else
    for i in arr
      b << i.capitalize
    end
    b.min(arr.size)
  end
end
