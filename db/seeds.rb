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
  "adoption_status" => "Being trained",
  "photo" => "https://pbs.twimg.com/profile_images/1722270702/Black_Labrador_Retriever_400x400.jpg"
  })
animal1.save()

animal2 = Animal.new({
  "name" => "Dolly",
  "type" => "Sheep",
  "age" => 3,
  "arrival_date" => 'Feb 01 2018',
  "adoption_status" => "Ready for adoption",
  "photo" => "http://static5.uk.businessinsider.com/image/5797a92fdd0895057c8b4a6f-480/dolly-the-sheep-media-debut.jpg"
  })
animal2.save()

animal3 = Animal.new({
  "name" => "Harambe",
  "type" => "Gorilla",
  "age" => 4,
  "arrival_date" => 'Dec 31 2017',
  "adoption_status" => "Adopted",
  "photo" =>
  "https://blogs.qub.ac.uk/qubio/files/2016/06/Harambe-300x300.jpg"
  })
animal3.save()


animal4 = Animal.new({
  "name" => "Herbie",
  "type" => "Dog",
  "age" => 5,
  "arrival_date" => 'Feb 14 2018',
  "adoption_status" => "Adopted",
  "photo" => "https://dingo.care2.com/pictures/greenliving/uploads/2017/10/Happy-small-dog.jpg"
  })
animal4.save()

animal5 = Animal.new({
  "name" => "Mollie",
  "type" => "Cat",
  "age" => 9,
  "arrival_date" => 'Jan 11 2018',
  "adoption_status" => "Ready for adoption",
  "photo" => "https://cdn.theatlantic.com/assets/media/img/mt/2017/08/GettyImages_161785570/lead_960.jpg?1502385684"
  })
animal5.save()


animal6 = Animal.new({
  "name" => "Mister Ed",
  "type" => "Horse",
  "age" => 9,
  "arrival_date" => 'Oct 31 2017',
  "adoption_status" => "Being trained",
  "photo" =>
  "https://i1.wp.com/theverybesttop10.com/wp-content/uploads/2013/05/Top-10-Images-of-Laughing-Horses-6.jpg?w=588&ssl=1"
  })
animal6.save()

animal7 = Animal.new({
  "name" => "Cecile",
  "type" => "Lion",
  "age" => 3,
  "arrival_date" => 'July 31 2017',
  "adoption_status" => "Ready for adoption",
  "photo" => "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Cecil_the_lion_at_Hwange_National_Park_%284516560206%29.jpg/1920px-Cecil_the_lion_at_Hwange_National_Park_%284516560206%29.jpg"
  })
animal7.save()

owner1 = Owner.new({
  "name" => "Rosemary",
  "age" => 50,
  "info" => "Married, 2 grown up children, large house and garden"
  })
owner1.save()

owner2 = Owner.new({
  "name" => "Mark",
  "age" => 23,
  "info" => "Lives with flatmate, part time student"
    })
owner2.save()

owner3 = Owner.new({
  "name" => "Will",
  "age" => 30,
  "info" => "Works part time, lives alone, has a pet cat"
  })
owner3.save()

adoption1 = Adoption.new({
  "animal_id" => animal4.id,
  "owner_id" => owner1.id

  })
adoption1.save()



adoption3 = Adoption.new({
  "animal_id" => animal3.id,
  "owner_id" => owner3.id
  })
adoption3.save()

binding.pry
nil
