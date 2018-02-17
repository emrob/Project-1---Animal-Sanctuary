require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/owners')


get '/owners' do
  @owner = Owner.all()
  erb(:"owners/index")
end

post '/owners' do
  @owner = Owner.new(params)
  @owner.save()
  erb(:"owners/create")
end

get "/owners/new" do
  erb(:"owners/new")
end
