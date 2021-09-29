require 'sqlite3'
require 'singleton'

class QuestionDatabase < SQLite3::Database
include Singleton

  def create
    raise "#{self} already in database" if @id
  end

  def update
    raise "#{self} not in database" unless @id
  end
  
end

