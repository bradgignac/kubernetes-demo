require 'sinatra'

BUILD_TIME = 'KUBERNETES_DEMO_BUILD_TIME'

get '/' do
  unless ENV.key?(BUILD_TIME)
    raise 'No build time available in environment!'
  end

  ENV[BUILD_TIME]
end
