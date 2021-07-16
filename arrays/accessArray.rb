# ary = [1,2,3,4,5,6,7,8,9]

# p ary[0..4]
# p ary.at(0)
# p ary.take(4)
# p ary.drop(4)

# p ([1, 2, 3] - [1, 2]).first

arr = Array.new(101)

i = 0
arr.each do |_x|
  arr[i] = i + 1
  i += 1
end

p arr
p i
