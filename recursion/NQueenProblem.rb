$N = 4
$ld = Array.new(30)
$rd = Array.new(30)
$cl = Array.new(30)

def printArray(arr)
  arr.each do |x|
    p x
  end
end

def solveNQUtil(arr, col)
  return true if col >= $N

  (0..$N).each do |i|
    next unless ($ld[i - col + $N - 1] != 1 && $rd[i + col] != 1) && $cl[i] != 1

    arr[i][col] = 1
    $ld[i - col + $N - 1] = $rd[i + col]
    $cl[i] = 1

    return true if solveNQUtil(arr, col + 1)

    arr[i][col] = 0
    $ld[i - col + N - 1] = $rd[i + col]
    $cl[i] = 0
  end
  false
end

def solveNQ()
  arr = [[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]

  if solveNQUtil(arr, 0) == false
    puts 'solution does not exists'
    return false
  end
  printArray(arr)
  true
end

solveNQ

# arr = [[1,1,0,0],[0,1,1,0],[0,0,1,1],[0,0,0,1]]
# p arr
# solveNQUtil(arr, 2)
