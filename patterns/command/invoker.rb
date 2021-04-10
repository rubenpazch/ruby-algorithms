
class Invoker
    def on_start=(command)
        @on_start = command
    end

    def on_end=(command)
        @on_end = command
    end

    def do_something_important
        puts 'Invoker: Does anybody want something done before I begin?'
        @on_start.execute if @on_start.is_a? Command

        puts 'Invoker: ...doing something really important...'

        puts 'Invoker: Does anybody want something done after I finish?'
        @on_end.execute if @on_end.is_a? Command
    end
end