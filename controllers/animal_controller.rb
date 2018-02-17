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



#
# get '/animals/new' do
#   erb(:new)
# end
#
#
# post '/animals' do
#   @animals = Animal.new(params)
#   @animals.save()
#   erb(:create)
# end
