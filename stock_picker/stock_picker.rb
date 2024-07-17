  def stock_picker(value)
    result = [0,0]
    gain = 0

    #iterate on the array
    value.each_with_index do |n, index|
      remaining_value = value[index..-1]
      max = remaining_value.max
      possible_gain = max - value[index]
      if possible_gain > gain
        result = [index, remaining_value.index(max) + index]
        gain = possible_gain
      end
    end
    return result
  end
