require 'sinatra'

get '/' do
  unless File.exists?('version.txt')
    raise 'No version available!'
  end

  File.read('version.txt')
end

error do
  "Internal Server Error - #{env['sinatra.error'].message}"
end
