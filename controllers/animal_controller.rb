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

post "/animals/:id/delete" do
  @animal = Animal.find(params['id'].to_i)
  @animal.delete()
  erb(:"animals/delete")
  
end

get '/animals/:id/edit' do
  @animal = Animal.find(params['id'].to_i)
  @adoption_status = ["ADOPTED", "Ready for a new home", "Being trained"]
  erb(:"animals/edit")

end

post '/animals/:id' do
  animal = Animal.new(params)
  animal.update()
  redirect to ("/animals")
end
