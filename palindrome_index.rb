# frozen_string_literal: true

def palindromeIndex(s)
  i = 0
  j = s.length - 1

  arr = s.chars
  while i < j
    if arr[i] != arr[j]
      return j if isPalindrome(s[i..j - 1]) == true
      return i if isPalindrome(s[i + 1..j]) == true
    end
    i += 1
    j -= 1
  end
  -1
end

def isPalindrome(s)
  s == s.reverse
end

p palindromeIndex('aaab')
