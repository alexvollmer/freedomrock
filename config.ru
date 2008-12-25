require 'rubygems'
require 'vendor/sinatra/lib/sinatra.rb'
require 'vendor/text/lib/text.rb'

Sinatra::Application.default_options.merge!(
  :run => false,
  :env => :production,
  :views => File.join(File.dirname(__FILE__), "views")
)

require 'myapp.rb'
run Sinatra.application
