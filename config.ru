require 'rubygems'

# from http://d.hatena.ne.jp/zhesto/20090127/1233045933
require 'rack/file'
class Rack::File
   MIME_TYPES = Hash.new { |hash, key|
   Rack::Mime::MIME_TYPES[".#{key}"] }
end

require 'vendor/sinatra/lib/sinatra.rb'

Sinatra::Application.default_options.merge!(
  :run => false,
  :env => :production,
  :views => File.join(File.dirname(__FILE__), "views")
)

require 'myapp.rb'
run Sinatra.application
