require File.join(File.dirname(__FILE__), *%w[server])

require 'rack-livereload'
use Rack::LiveReload

run Sinatra::Application.new
