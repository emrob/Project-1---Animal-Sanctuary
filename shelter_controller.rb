require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( './models/animals')

get '/animals' do
  @animal = Animal.all()
  erb(:index)
end

get '/animals/new' do
  erb(:new)
end


post '/animals' do
  @animals = Animal.new(params)
  @animals.save()
  erb(:create)
end
