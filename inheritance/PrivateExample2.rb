class Person
  def speak
    puts 'Hey douth!'
  end

  def whisper_louder
    whisper
  end

  private

  def whisper
    puts 'His name is not  doputhc'
  end
end

you = Person.new
you.speak

a_hater = Person.new
a_hater.speak
# a_hater.whisper
a_hater.whisper_louder
