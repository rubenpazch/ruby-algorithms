#h = {apple: 100, orange: 200}

#puts h.value?(100)
#puts h.key?(:orange)
#puts h[:apple]
#puts h[:orange]
#puts h.invert

#persona = {
#  nombre: "pedro",
#  edad: 23,
#  correo: "rubenpazchuspe@outlook.com"
#}
#persona.each { |x,y| puts "#{x} : #{y}"}

#grades = { "Jane Doe" => 10, "Jim Doe" => 6 }
#options = { :font_size => 10, :font_family => "Arial" }
#options = { font_size: 10, font_family: "Arial" }
#puts options[:font_size]

#grades = Hash.new 
#grades["Los Amigos"]  = 9
#puts grades


#grades = Hash.new(0)
#puts grades
#grades = {"Timmy Doe" => 8}
#grades.default = 0
#p grades[:r]

#h = Hash.new("new fish");
#h["a"] = 100
#h["b"] = 200
#
#p h["a"]
#p h["b"]
#p h["c"]
#p h[1]
#p h.values

h = Hash.new { |hash, key| hash[key] = "Go Fish: #{key}" }

p h