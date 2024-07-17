class Student

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(b)
    puts "Well done" if self.grade > b.grade
  end

  protected

  def grade
    @grade
  end
end

puts a = Student.new("John", 5)
puts b = Student.new("Paul", 8)
puts a.better_grade_than?(b)
puts b.better_grade_than?(a)
