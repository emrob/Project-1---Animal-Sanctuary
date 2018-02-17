require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/animals')

get '/animals' do
  @animal = Animal.all()
  erb(:index)
end
