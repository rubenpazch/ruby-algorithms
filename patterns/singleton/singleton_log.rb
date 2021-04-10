class Log
    def initialize
        @log = File.new 'log.txt', 'a'
    end

    def log(msg)
        @log.puts msg
    end

    @@instance = Log.new

    def self.instance
        @@instance
    end

    private_class_method :new
end


s = Log.instance
s.log("casaaaa")