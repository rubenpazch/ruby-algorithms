$N = 8

def isSafe(x, y, arr ) 
  return (x>=0 && x < N && y>=0 && y<N && arr[x][y] == -1)
end

def printArray(arr) 
  arr.each  do |x|
        p x
  end
end

def solveKT 
  rows, cols = 8, 8  
  grid = Array.new(rows) { Array.new(cols) }
  
  for i in 0..$N-1 
    for j in 0..$N-1
      grid[i][j] = -1
    end
  end
  p grid
end


solveKT()