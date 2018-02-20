require_relative('../db/sql_runner')

class Animal

  attr_accessor :name, :type, :age, :arrival_date, :adoption_status, :id

  def initialize( options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @type = options['type']
    @age = options['age'].to_i
    @arrival_date = options['arrival_date']
    @adoption_status = options['adoption_status']

  end


  def save()
    sql = "INSERT INTO animals (name, type, age, arrival_date, adoption_status) VALUES ($1, $2, $3, $4, $5) RETURNING *"
    values = [@name, @type, @age, @arrival_date, @adoption_status]
    animal = SqlRunner.run(sql, values)
    @id = animal.first()['id'].to_i
  end

  def update()
    sql = "UPDATE animals SET (name, type, age, arrival_date, adoption_status) = ($1, $2, $3, $4, $5) WHERE id = $6"
    values =[@name, @type, @age, @arrival_date, @adoption_status, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM animals WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql,values)
  end



  def self.delete_all()
    sql= "DELETE FROM animals"
    SqlRunner.run(sql)
  end



  def self.all()
    sql = "SELECT * FROM animals"
    animals = SqlRunner.run(sql)
    result = animals.map { |animal| Animal.new(animal )}
    return result
  end

  def self.find(id)
    sql = "SELECT * FROM animals WHERE id = $1"
    values = [id]
    animals = SqlRunner.run( sql, values)
    result = Animal.new(animals.first())
    return result
  end



  def owner()
    sql = "SELECT * FROM owners INNER JOIN adoptions ON owners.id = adoptions.owner_id WHERE animal_id = $1"
    values = [@id]
    adoption = SqlRunner.run(sql,values)
    return adoption.map {|adopt| Owner.new(adopt)}

  end













end
