class Pokemon
  attr_reader :id,:name,:type,:db

  def initialize(id:id, name:name, type:type, db:db)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def save(name, type, database_connection)
    database_connection.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end

  def find

  end
end
