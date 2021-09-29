require "sqlite3"
require 'singleton'

class QuestionDatabase < SQLite::Database
include singleton

  
end

