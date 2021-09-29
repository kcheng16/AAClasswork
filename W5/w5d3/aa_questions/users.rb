
class Users < QuestionDatabase

  def self.all
    data = QuestionsDatabase.instance.execute("SELECT * FROM questions")
    data.map { |datum | Users.new(datum) }
  end

end