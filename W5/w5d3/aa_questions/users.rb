require_relative 'questions_database'

class Users #< QuestionDatabase

  attr_accessor :id, :fname, :lname

  def self.all
    data = QuestionDatabase.instance.execute("SELECT * FROM questions")
    data.map { |datum | Users.new(datum) }
  end

  def self.find_by_id(id) #
    end_result = QuestionDatabase.instance.execute(<<-SQL, id)
      SELECT fname, lname
      FROM users
      WHERE id = ?

    SQL
  end

  def self.find_by_name

  end

  def initialize(options)
    @id = options["id"]
    @fname = options["fname"]
    @lname = options["lname"]
  end

  def create
    # raise "#{self} already in database" if @id

    QuestionDatabase.instance.execute(<<-SQL, @fname, @lname)
      INSERT INTO users (fname, lname)
      VALUES (?, ?)
    SQL
    @id = QuestionDatabase.instance.last_insert_row_id
  end

end