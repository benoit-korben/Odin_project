def caesar_cipher(string, shift)
  result = ""
  alphabet = ("a".."z").to_a
  string.chars.each do |letter|
    if alphabet.include?(letter.downcase)
      shift.times {letter = letter.next }
    end
  result << letter[-1]
  end
  result
end
