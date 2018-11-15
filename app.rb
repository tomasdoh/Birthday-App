require 'sinatra/base'

class Birthday < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/birthday' do
    @name = params[:name]
    erb(:name)
    # redirect '/name'
  end

  # get 'name' do
  #
  # end

  run! if app_file == $0
end
