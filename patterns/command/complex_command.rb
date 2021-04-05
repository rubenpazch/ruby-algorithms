require_relative 'command'

class ComplexCommand < Command
    def initialize(receiver, a, b)
        @receiver = receiver
        @a = a
        @b = b
    end

    def execute
        print 'ComplexCommand: complex stuff should be done by a receiver object'
        @receiver.do_something(@a)
        @receiver.do_something_else(@b)
    end
end