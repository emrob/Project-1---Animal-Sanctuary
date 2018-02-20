require_relative('../db/sql_runner')

class Owner

  attr_accessor :name, :age, :id

  def initialize( options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @age = options['age'].to_i

  end


def save()
  sql = "INSERT INTO owners (name, age) VALUES ($1, $2) RETURNING *"
  values = [@name, @age]
  owners = SqlRunner.run(sql, values)
  @id = owners.first()['id'].to_i

end

def update()
  sql = "UPDATE owners SET (name, age) = ($1, $2) WHERE id = $3"
  values =[@name, @age, @id]
  SqlRunner.run(sql, values)

end


def delete()
  sql = "DELETE FROM owners WHERE id = $1"
  values = [@id]
  SqlRunner.run(sql,values)

end

def self.delete_all()
  sql= "DELETE FROM owners"
  SqlRunner.run(sql)

end

def self.all()
  sql = "SELECT * FROM owners"
  owners = SqlRunner.run(sql)
  result = owners.map { |owner| Owner.new(owner)}
  return result

end

def self.find(id)
  sql = "SELECT * FROM owners WHERE id = $1"
  values = [id]
  owners = SqlRunner.run(sql, values)
  result = Owner.new(owners.first())
  return result

end

def animal()
  sql = "SELECT * FROM animals INNER JOIN adoptions ON animals.id = adoptions.animal_id WHERE owner_id = $1"
  values = [@id]
  adoption = SqlRunner.run(sql, values)
  return adoption.map {|adopt| Animal.new(adopt)}
end







end
