def flatter(array, result = [])
  array.each do |element|
    if element.is_a?(Array)
      flatter(element, result)
    else
      result << element
    end
  end
  result
end

# print flatter([[1, 2], [3, 4]])
# print flatter([1, [8, 9]], [3, 4])
