def rubygem(file)
  gem, file = file.values[0], file.keys[0] if file.respond_to? :keys
  require file
rescue LoadError
  raise "** Please `gem install #{gem || file.split('/')[0]}`"
end

require "net/http"	  
rubygem 'sinatra/base'
rubygem 'haml'
rubygem 'rack-lesscss'
rubygem 'yajl' => 'yajl-ruby'
require "yajl/json_gem"
rubygem "restclient" => 'rest-client'
rubygem 'rack/contrib' => 'rack-contrib'

require 'models/result'
require 'models/stream'
require 'helpers'