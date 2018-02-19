require("pry")
require_relative('../models/animals.rb')
require_relative('../models/owners.rb')
require_relative('../models/adoption.rb')


Animal.delete_all()
Owner.delete_all()


animal1 = Animal.new({
  "name" => "Herbie",
  "type" => "Dog",
  "age" => 5,
  "days_in_care" => 7,
  "adoption_status" => "ADOPTED"
  })
animal1.save()

animal2 = Animal.new({
  "name" => "Mollie",
  "type" => "Dog",
  "age" => 9,
  "days_in_care" => 14,
  "adoption_status" => "Ready for a new home"
  })
animal2.save()

animal3 = Animal.new({
  "name" => "Matilda",
  "type" => "Rabbit",
  "age" => 2,
  "days_in_care" => 3,
  "adoption_status" => "Ready for a new home"
  })
animal3.save()

animal4 = Animal.new({
  "name" => "Buster",
  "type" => "Rabbit",
  "age" => 1,
  "days_in_care" => 11,
  "adoption_status" => "Being trained"
  })
animal4.save()

animal5 = Animal.new({
  "name" => "Terri",
  "type" => "Tarantula",
  "age" => 1,
  "days_in_care" => 1,
  "adoption_status" => "Being trained"
  })
animal5.save()

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
  "animal_id" => animal1.id,
  "owner_id" => owner1.id

  })
adoption1.save()

adoption2 = Adoption.new({
  "animal_id" => animal2.id,
  "owner_id" => owner2.id

  })
adoption2.save()

binding.pry
nil
