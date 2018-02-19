require_relative('../db/sql_runner')

class Animal

  attr_accessor :name, :type, :age, :days_in_care, :adoption_status, :id

  def initialize( options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @type = options['type']
    @age = options['age'].to_i
    @days_in_care = options['days_in_care'].to_i
    @adoption_status = options['adoption_status']

  end


  def save()
    sql = "INSERT INTO animals (name, type, age, days_in_care, adoption_status) VALUES ($1, $2, $3, $4, $5) RETURNING *"
    values = [@name, @type, @age, @days_in_care, @adoption_status]
    animal = SqlRunner.run(sql, values)
    @id = animal.first()['id'].to_i
  end

  def owner()
    sql = "SELECT * FROM owners INNER JOIN adoptions ON owners.id = adoptions.owner_id WHERE animal_id = $1"
    values = [@id]
    adoption = SqlRunner.run(sql,values)
    return adoption.map {|adopt| Owner.new(adopt)}

  end





  def self.all()
    sql = "SELECT * FROM animals"
    animals = SqlRunner.run(sql)
    result = animals.map { |animal| Animal.new(animal )}
    return
  end

  def self.find(id)
    sql = "SELECT * FROM animals WHERE id = $1"
    values = [id]
    animals = SqlRunner.run( sql, values)
    result = Animal.new(animals.first())
    return
  end


  def self.delete_all()
    sql= "DELETE FROM animals"
    SqlRunner.run(sql)
  end

  def delete()
    sql = "DELETE FROM animals WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql,values)
  end


end
