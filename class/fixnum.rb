class Fixnum 
  def seconds 
    self
  end
  def minutes 
    self * 60
  end
  def hours 
    self * 60 * 60
  end
  def days 
    self * 60 * 60 * 24
  end
end

# puts Time.now
# puts Time.now + 10.minutes
# puts Time.now + 16.minutes
# puts Time.now + 7.days

epoch_time = Time.gm(2007, 5).to_i
t = Time.at(epoch_time)
puts t.year, t.month, t.day