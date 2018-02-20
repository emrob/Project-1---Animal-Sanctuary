require("pry")
require_relative('../models/animals.rb')
require_relative('../models/owners.rb')
require_relative('../models/adoption.rb')


Animal.delete_all()
Owner.delete_all()

animal1 = Animal.new({
  "name" => "Fenton",
  "type" => "Dog",
  "age" => 1,
  "arrival_date" => 'Nov 29 2017',
  "adoption_status" => "Being trained"
  })
animal1.save()

animal2 = Animal.new({
  "name" => "Dolly",
  "type" => "Sheep",
  "age" => 3,
  "arrival_date" => 'Feb 01 2018',
  "adoption_status" => "Ready for adoption"
  })
animal2.save()

animal3 = Animal.new({
  "name" => "Harambe",
  "type" => "Gorilla",
  "age" => 4,
  "arrival_date" => 'Dec 31 2017',
  "adoption_status" => "Adopted"
  })
animal3.save()


animal4 = Animal.new({
  "name" => "Herbie",
  "type" => "Dog",
  "age" => 5,
  "arrival_date" => 'Feb 14 2018',
  "adoption_status" => "ADOPTED"
  })
animal4.save()

animal5 = Animal.new({
  "name" => "Mollie",
  "type" => "Dog",
  "age" => 9,
  "arrival_date" => 'Jan 11 2018',
  "adoption_status" => "Adopted"
  })
animal5.save()


animal6 = Animal.new({
  "name" => "Mr Ed",
  "type" => "Horse",
  "age" => 9,
  "arrival_date" => 'Oct 31 2017',
  "adoption_status" => "Ready for a new home"
  })
animal6.save()

animal7 = Animal.new({
  "name" => "Cecile",
  "type" => "Lion",
  "age" => 3,
  "arrival_date" => 'July 31 2017',
  "adoption_status" => "Being trained"
  })
animal7.save()

owner1 = Owner.new({
  "name" => "Rosemary",
  "age" => 50
  })
owner1.save()

owner2 = Owner.new({
  "name" => "Mark",
  "age" => 23

  })
owner2.save()

owner3 = Owner.new({
  "name" => "Will",
  "age" => 30
  })
owner3.save()

adoption1 = Adoption.new({
  "animal_id" => animal4.id,
  "owner_id" => owner1.id

  })
adoption1.save()

adoption2 = Adoption.new({
  "animal_id" => animal5.id,
  "owner_id" => owner2.id

  })
adoption2.save()

adoption3 = Adoption.new({
  "animal_id" => animal3.id,
  "owner_id" => owner3.id
  })
adoption3.save()

binding.pry
nil
