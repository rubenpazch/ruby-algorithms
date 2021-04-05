require_relative 'command'

class SimpleCommand < Command
    def initialize(payload)
        @payload = payload
    end

    def execute
        puts "SimpleCommand: See, I can do simple things like printing (#{@payload})"
    end
end