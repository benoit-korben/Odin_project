def bubble_sort(values)
  n = values.length
  loop do
    swapped = false
    (n - 1).times do |i|
      if values[i] > values[i + 1]
        values[i], values[i + 1] = values[i + 1], values[i]
        swapped = true
      end
    end
    break if not swapped
    n -= 1
  end
  values
end
