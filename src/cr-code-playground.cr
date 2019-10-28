require "http/server"

port = 9190

server = HTTP::Server.new do |context|
  context.response.content_type = "text/html"
  context.response.print "Hello world, got #{context.request.path}"
end

puts "Listening on port :#{port}"
server.listen(port)
