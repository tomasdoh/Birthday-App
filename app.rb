require 'sinatra/base'

class Birthday < Sinatra::Base
  get '/' do
    'Happy Birthday!'
  end

  run! if app_file == $0
end
