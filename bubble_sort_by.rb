def bubble_sort(a = [])
  b = []
  if a.all? { |x| x.is_a? Numeric }
    a.min(a.max)
  else
    for i in a
      b << i.capitalize
    end
    b.min(a.size)
  end
end
