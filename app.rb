require 'sinatra/base'
require './lib/birthday_calculator'
require './lib/user'

class Birthday < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/birthday' do
    @name = User.name(params[:name])
    @days = BirthdayCalculator.days_until(params[:year],params[:month],params[:day])
    redirect '/happy-birthday'
  end

  get '/happy-birthday' do
    @days = BirthdayCalculator.instance
    @name = User.instance
    erb(:birthday)
  end

  run! if app_file == $0
end
