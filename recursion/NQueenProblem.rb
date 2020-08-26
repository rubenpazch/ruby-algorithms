$N = 4
$ld = Array.new(30)
$rd = Array.new(30)
$cl = Array.new(30)

def safe?(arr, row, col)
  (0..col - 1).each do |x|
    return false if arr[row][x] == 1
  end

  r = row
  s = col
  r.downto(0) do |m|
    return false if arr[m][s] == 1

    s -= 1
  end

  j = row
  k = col
  j.downto(0) do |m|
    return false if arr[m][k] == 1

    k -= 1
  end

  true
end

def print_array(arr)
  arr.each do |x|
    p x
  end
end

def solve_nqutil(arr, col)
  return true if col >= $N

  (0..$N).each do |i|
    next unless safe?(arr, i, col)

    arr[i][col] = 1
    if solve_nqutil(arr, col + 1)
      return true
    else
      arr[i][col] = 0
    end
  end
  false
end

def solve_nq()
  arr = [[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]

  if solve_nqutil(arr, 0) == false
    puts 'solution does not exists'
    return false
  end
  print_array(arr)
  true
end

solve_nq

# arr = [[1,1,0,0],[0,1,1,0],[0,0,1,1],[0,0,0,1]]
# p arr
# solveNQUtil(arr, 2)
