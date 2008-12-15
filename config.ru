require 'rubygems'
require 'vendor/sinatra/lib/sinatra'

Sinatra::Application.default_options.merge!(
  :run => false,
  :env => :production
)

require 'myapp.rb'
run Sinatra.application
