require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/adoption')
require_relative( '../models/owners')
require_relative( '../models/animals')

get '/adoption' do
  @adopt = Adoption.all()
  erb(:"adoptions/index")
end

post '/adoption' do
  @adopt = Adoption.new(params)
  @adopt.save()
  animal = Animal.find(@adopt.animal_id)
  animal.adoption_status = "Adopted"
  animal.update
  redirect to('/adoption')
end

get '/adoption/new' do
  @animals = Animal.all
  @owners = Owner.all
  erb(:"adoptions/new")
end
