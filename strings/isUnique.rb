def isUniqueChars(s)
  return false if s.length > 128

  char_set = Array.new(128, false)
  s.each_char do |char|
    index = char.ord
    if char_set[index]
      return false
    end    
    char_set[index] = true
  end
  true
end

p isUniqueChars("cas")

