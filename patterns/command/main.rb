require_relative './invoker'
require_relative './receiver'
require_relative './simple_command'
require_relative './complex_command'

invoker = Invoker.new
invoker.on_start = SimpleCommand.new('say hi!')

receiver = Receiver.new
invoker.on_end = ComplexCommand.new(receiver, 'send mail', 'send report')

invoker.do_something_important
