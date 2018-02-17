require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative('controllers/animal_controller')


get '/animal-shelter' do
  erb(:homepage)
end
