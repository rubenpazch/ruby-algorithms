def anagram(s)
  len = s.length
  string_left = s[0..(len / 2) - 1]
  string_rigth = s[(len / 2)..len]
  hash_left = countingOccurencies(string_left.chars)
  hash_right = countingOccurencies(string_rigth.chars)
  counter = 0
  if len.even?
    hash_left.each do |k, v|
      if hash_right.key?(k)
        counter += v - hash_right.fetch(k) if hash_left.fetch(k) > hash_right.fetch(k)
      else
        counter += v
       end
    end
  else
    return -1
  end
  counter
end

def countingOccurencies(arr)
  hash = {}
  arr.each { |x| hash[x] = 0 }
  hash.each do |k, _v|
    hash[k] = arr.count { |m| m == k }
  end
  hash
end

anagram('aaabbb')
