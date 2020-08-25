$N = 8

def safe?(x, y, arr)
  (x >= 0 && x < $N && y >= 0 && y < $N && arr[x][y] == -1)
end

def print_array(arr)
  arr.each do |x|
    p x
  end
end

def solve_kt
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

  if !solve_ktutil(0, 0, 1, grid, xMove, yMove)
    puts 'solutions not exists'
    return false
  else
    printArray(grid)
  end
  true
end

def solve_ktutil(x, y, movei, arr, xMove, yMove)
  
  next_x = 0
  next_y = 0

  return true if movei == $N * $N

  (0..8).each do |k|
    next_x = x + xMove[k]
    next_y = y + yMove[k]

    if safe?(next_x, next_y, arr)
      arr[next_x][next_y] = movei
      if solve_ktutil(next_x, next_y, movei + 1, arr, xMove, yMove)
        return true
      else
        arr[next_x][next_y] = -1
      end
    end

    return false
  end
end

solve_kt()
