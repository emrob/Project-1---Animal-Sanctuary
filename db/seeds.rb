require("pry")
require_relative('../models/animals.rb')

Animal.delete_all()

animal1 = Animal.new({
  "name" => "Herbie",
  "type" => "Dog",
  "age" => 5,
  "days_in_care" => 7,
  })
animal1.save()

animal2 = Animal.new({
  "name" => "Mollie",
  "type" => "Dog",
  "age" => 9,
  "days_in_care" => 14,
  })
animal2.save()

animal3 = Animal.new({
  "name" => "Matilda",
  "type" => "Rabbit",
  "age" => 2,
  "days_in_care" => 3,
  })
animal3.save()

animal4 = Animal.new({
  "name" => "Buster",
  "type" => "Rabbit",
  "age" => 1,
  "days_in_care" => 11,
  })
animal4.save()

        # owner1 = Owner.new({
        #   "name" => "Rosemary",
        #   "age" => 50
        #   })

        #   owner2 = Owner.new({
        #     "name" => "Mark",
        #     "age" => 23
        #     })


binding.pry
nil
