require 'rest-client'

data = RestClient.get("www.rubyguides.com")

module LogHTTPRequest
    def get(url)
        puts "Sending request for #{url}"
        super
    end
end


class HTTPClient
    def initialize(client = RestClient)
        @client = client
    end

    def get(*args)
        @client.get(*args)
    end
end

client = HTTPClient.new
client.extend(LogHTTPRequest)
client.get("rubyguides.com")
