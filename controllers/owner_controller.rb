require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/owners')


get '/owners' do
  @owner = Owner.all()
  erb(:"owners/index")
end
