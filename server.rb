Encoding.default_internal = Encoding.default_external = 'UTF-8'

def path_to(dir)
  File.join(File.dirname(__FILE__), dir)
end

require 'bundler/setup'
require 'sinatra'
require 'sinatra/activerecord'

require 'sass/plugin/rack'

# Require classes needed for project
require path_to('lib/models/foo')

use Sass::Plugin::Rack

configure do
  set :views, File.expand_path(path_to 'dist')
  set :public_folder, File.expand_path(path_to 'dist')
  set :haml, { :attr_wrapper => '"', :format => :html5 }
  set :database, { adapter: "sqlite3", database: "foo.sqlite3" }
end

configure :development do
  require 'sinatra/reloader'
  Sinatra::Application.also_reload "lib/**/*.rb"
end

get '/' do
  if File.exist?('dist/index.html')
    send_file 'dist/index.html'
  else
    "Nothing here yet. run 'ember init project_name' and 'ember build'"
  end
end
