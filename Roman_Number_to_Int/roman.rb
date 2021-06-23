def convert_roman_number(s)
  return 0 if s.nil? || s.length == 0

  h = {}
  h = { I: 1, V: 5, X: 10, L: 50, C: 100, D: 500, M: 1000 }

  result = 0
  index = 1
  s.each_char do |item|
    if h[:"#{item}"].to_i >= s[index].to_i
      puts 'it greater'
      result += h[:"#{item}"].to_i
    else
      puts 'it lower'
      result -= h[:"#{item}"].to_i
    end
    index += 1
  end
  result - h[:"#{s.length - 1}"].to_i
end
