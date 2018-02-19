require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/animals')



post '/animals' do
  @animal = Animal.new(params)
  @animal.save()
  erb(:"animals/create")
end


get '/animals/new' do
  erb(:"animals/new")
end

get '/animals' do
  @animal = Animal.all()
  erb(:"animals/index")
end

get '/animals/:id' do
  @animal = Animal.find(params['id'].to_i)
  erb(:"animals/show")
end


get '/animals/:id/edit' do
  @animal = Animal.find(params['id'].to_i)
  erb(:"animals/edit")
end
