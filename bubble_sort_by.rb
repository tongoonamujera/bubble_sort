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

    if arr.all? { |x| x.is_a? Numeric }
      (arr.length - 1).times do |i|
        if arr[i] > arr[i + 1]
          arr[i], arr[i + 1] = arr[i + 1], arr[i]
          swap_element = true
        end
      end
    else
      (arr.length - 1).times do |i|
        if arr[i].size > arr[i + 1].size
          arr[i], arr[i + 1] = arr[i + 1], arr[i]
          swap_element = true
        end
      end
    end
  end
end

def bubble_sort_by(arr)
  return arr if arr.length <= 1

  swap(arr)

  arr
end

arrz = ["helllllloooo", "hellllooo", "helllooo", "helllo", "hell"]

arry = [10, 20, 11, 55, 30, 111,15]

print bubble_sort_by(arrz) #=>["hell", "helllo", "helllooo", "hellllooo", "helllllloooo"]

print bubble_sort_by(arry) #=>[10, 11, 15, 20, 30, 55, 111]