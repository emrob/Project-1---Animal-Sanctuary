require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/owners')


post '/owners' do
  @owner = Owner.new(params)
  @owner.save()
  erb(:"owners/create")
end

get "/owners/new" do
  erb(:"owners/new")
end

get '/owners' do
  @owner = Owner.all()
  erb(:"owners/index")
end

get '/owners/:id' do
  @owner = Owner.find(params['id'].to_i)
  erb(:"owners/show")
end


post "/owners/:id/delete" do
  @owner = Owner.find(params['id'].to_i)
  @owner.delete()
  erb(:"owners/delete")
end
