$N = 8

def isSafe(x, y, arr)
  (x >= 0 && x < $N && y >= 0 && y < $N && arr[x][y] == -1)
end

def printArray(arr)
  arr.each do |x|
    p x
  end
end

def solveKT
  rows = 8
  cols = 8
  grid = Array.new(rows) { Array.new(cols) }

  (0..$N - 1).each do |i|
    (0..$N - 1).each do |j|
      grid[i][j] = -1
    end
  end

  xMove = [2, 1, -1, -2, -2, -1, 1, 2]
  yMove = [1, 2, 2, 1, -1, -2, -2, -1]

  grid[0][0] = 0

  if !solveKTUtil(0, 0, 1, grid, xMove, yMove)
    puts 'solutions not exists'
    return false
  else
    printArray(grid)
  end
  true
end

def solveKTUtil(x, y, movei, arr, xMove, yMove)
  k = 0
  next_x = 0
  next_y = 0

  return true if movei == $N * $N

  (0..8).each do |k|
    next_x = x + xMove[k]
    next_y = y + yMove[k]

    if isSafe(next_x, next_y, arr)
      arr[next_x][next_y] = movei
      if solveKTUtil(next_x, next_y, movei + 1, arr, xMove, yMove)
        return true
      else
        arr[next_x][next_y] = -1
      end
    end

    return false
  end
end

solveKT
