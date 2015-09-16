def nearest_larger(arr, i)
  l, u = i, i
  loop do
    l -= 1
    u += 1
    if l >= 0 && arr[l] > arr[i]
      return l
    elsif u < arr.length && arr[u] > arr[i]
      return u
    elsif l < 0 && u >= arr.length
      return nil
    end
  end
end
