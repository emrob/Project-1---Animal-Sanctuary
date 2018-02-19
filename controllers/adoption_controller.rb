require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/adoption')
require_relative( '../models/owners')
require_relative( '../models/animals')


get '/adoption' do
  @adoption = Adoption.all()
  erb(:"adoptions/index")
end
