require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/adoption')


get '/adoption' do
  @adoption = Adoption.all()
  erb(:"adoptions/index")
end
