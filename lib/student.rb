require_relative "../config/environment.rb"
# Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

class Student
 attr_accessor :id, :name, :grade
 
def initialize(id = nil, name, grade)
   @id = id
   @name = name
   @grade = grade
end
  
def self.drop_table
  sql = "DROP TABLE students"
  DB[:conn].execute(sql)
end

def self.create_table
  sql = <<-SQL
  CREATE TABLE IF NOT EXISTS students(
  id INTEGER PRIMARY KEY,
  name TEXT, 
  grade INTEGER);
  SQL
  
  DB[:conn].execute(sql)
end

def save
  sql = <<-SQL
  INSERT INTO students
  SQL


end
