require 'sqlite3'
require 'singleton'

class QuestionDatabase #< SQLite3::Database
include Singleton

  attr_reader :database

  SQL_FILE = File.join(File.dirname(__FILE__), 'import_db.sql')
  DB_FILE = File.join(File.dirname(__FILE__), 'questions.db')
  def initialize
    super('questions.db')
  end

  def self.open
    @database = SQLite3::Database.new(DB_FILE)
    @database.results_as_hash = true
    @database.type_translation = true
    return @database
  end

  def self.reset!
    commands = [
      "rm #{DB_FILE}",
      "cat #{SQL_FILE} | sqlite3 #{DB_FILE}"
    ]

    commands.each { |command| `#{command}` }
    QuestionDatabase.open
  end

  def create
    raise "#{self} already in database" if @id
  end

  def update
    raise "#{self} not in database" unless @id
  end

end

