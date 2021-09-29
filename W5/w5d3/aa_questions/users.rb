
class Users < QuestionDatabase

  attr_accessor :id, :fname, :lname

  def self.all
    data = QuestionsDatabase.instance.execute("SELECT * FROM questions")
    data.map { |datum | Users.new(datum) }
  end

  def self.find_by_id
    
  end

  def initialize(options)
    @id = options["id"]
    @fname = options["fname"]
    @lname = options["lname"]
  end

end