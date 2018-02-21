require_relative('../db/sql_runner')

class Adoption

  attr_accessor :animal_id, :owner_id, :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @animal_id = options['animal_id'].to_i
    @owner_id = options['owner_id'].to_i

  end

def save()
  sql = "INSERT INTO adoptions (animal_id, owner_id) VALUES ($1, $2) RETURNING id"
  values = [@animal_id, @owner_id]
  results = SqlRunner.run(sql,values).first
  @id = results['id'].to_i
end

def self.all()
  sql = "SELECT * FROM adoptions"
  adoptions = SqlRunner.run(sql)
  result = adoptions.map { |adoption| Adoption.new(adoption)}
  return result

end

def animal()
  sql = "SELECT * FROM animals WHERE id = $1"
  values = [@animal_id]
  results = SqlRunner.run( sql, values)
  return Animal.new( results.first )
end

def owner()
  sql = "SELECT * FROM owners WHERE id = $1"
  values = [@owner_id]
  results = SqlRunner.run( sql, values)
  return Owner.new( results.first )
end

def self.find(id)
  sql = "SELECT * FROM adoptions WHERE id = $1"
  values = [id]
  adoptions = SqlRunner.run(sql, values)
  result = Adoption.new(adoptions.first)
end

end
