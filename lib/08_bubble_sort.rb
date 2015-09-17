def bubble_sort(arr)
  begin
    sorted = true
    (arr.length-1).times do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i + 1] = arr[i+1], arr[i]
        sorted = false
      end
    end
  end until sorted
  arr
end
