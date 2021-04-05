require_relative './invoker.rb'
require_relative './receiver.rb'
require_relative './simple_command.rb'
require_relative './complex_command.rb'

invoker = Invoker.new
invoker.on_start = SimpleCommand.new('say hi!')

receiver = Receiver.new
invoker.on_end = ComplexCommand.new(receiver, 'send mail', 'send report')

invoker.do_something_important