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







end
