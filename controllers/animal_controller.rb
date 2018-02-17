require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/animals')

get '/animals' do
  @animal = Animal.all()
  erb(:"animals/index")
end

get '/animals/:id' do
  @animal = Animal.find(params['id'].to_i)
  erb(:"animals/show")
end


post '/animals' do
  @animals = Animal.new(params)
  @animals.save()
  erb(:"animals/create")
end


get '/animals/add' do
  erb(:"animals/new")
end
