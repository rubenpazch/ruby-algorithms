#   10 2 3
#   3 1 = 4
#   5 2 8 = 15

#   20 4  6
#   2  4  12  45
#   5  12 44  111 2 7

# !/bin/ruby

#
# Complete the getMoneySpent function below.
#
def getMoneySpent(keyboards, drives, b)
  arrK = keyboards.sort.reverse
  arrD = drives.sort.reverse

  return -1 if keyboards.length == 1 && drives.length == 1 && (keyboards.sum + drives.sum) > b

  max = 0
  arrK.each do |k|
    arrD.each do |d|
      sum = k + d
      max = sum if sum <= b && sum > max
    end
  end

  max
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

bnm = gets.rstrip.split

b = bnm[0].to_i

n = bnm[1].to_i

m = bnm[2].to_i

keyboards = gets.rstrip.split(' ').map(&:to_i)

drives = gets.rstrip.split(' ').map(&:to_i)

#
# The maximum amount of money she can spend on a keyboard and USB drive, or -1 if she can't purchase both items
#

moneySpent = getMoneySpent keyboards, drives, b

fptr.write moneySpent
fptr.write "\n"

fptr.close

# !/bin/ruby

#
# Complete the getMoneySpent function below.
#
def getMoneySpent(keyboards, drives, b)
  total = -1
  keyboards.each do |k|
    drives.each do |d|
      sum = k + d
      total = max(total, sum) if sum <= b
    end
  end

  total
end

def max(x, y)
  if x > y
    x
  else
    y
  end
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

bnm = gets.rstrip.split

b = bnm[0].to_i

n = bnm[1].to_i

m = bnm[2].to_i

keyboards = gets.rstrip.split(' ').map(&:to_i)

drives = gets.rstrip.split(' ').map(&:to_i)

#
# The maximum amount of money she can spend on a keyboard and USB drive, or -1 if she can't purchase both items
#

moneySpent = getMoneySpent keyboards, drives, b

fptr.write moneySpent
fptr.write "\n"

fptr.close
