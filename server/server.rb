# frozen_string_literal: true

require 'webrick'
require 'rexml/document'
require 'liquid'

require_relative 'liquid_servlet'
require_relative 'example_servlet'

link = "http://localhost\:13337/testcases"

puts "Go To:   #{link}"

if RbConfig::CONFIG['host_os'] =~ /mswin|mingw|cygwin/
  system "start #{link}"
elsif RbConfig::CONFIG['host_os'] =~ /darwin/
  system "open #{link}"
elsif RbConfig::CONFIG['host_os'] =~ /linux|bsd/
  system "xdg-open #{link}"
end

# Setup webrick
server = WEBrick::HTTPServer.new(Port: 13_337)
server.mount('/', Servlet)
trap('INT') { server.shutdown }
server.start
