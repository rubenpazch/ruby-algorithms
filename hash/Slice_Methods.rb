h = { a: 100, b: 200, c: 300 }
p h.slice(:a)           #=> {:a=>100}

p h.slice(:b, :c, :d)   #=> {:b=>200, :c=>300}
