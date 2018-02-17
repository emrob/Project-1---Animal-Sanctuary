require_relative('../db/sql_runner')

class Adoption

  attr_accessor :animal_id, :owner_id, :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @animal_id = options['animal_id']
    @owner_id = options['owner_id']

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




end
