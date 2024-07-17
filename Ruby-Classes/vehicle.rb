# Add a class variable to your superclass that can keep track of the number of objects created
# that inherit from the superclass.
# Create a method to print out the value of this class variable as well.


class Vehicle
  @@number_of_vehicles = 0

  def self.number_of_vehicles
    puts "There are #{@@number_of_vehicles} vehicles"
  end

  attr_reader :year
  attr_accessor :color

  def initialize (year, color, model)
    @@number_of_vehicles += 1
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def self.gas_consumption(km, liters)
   puts "It consumes #{(liters / km) * 100} l / kms"
  end

  def to_s
    puts "#{@model} is #{self.age} years old and is #{color}"
  end

  def accelerate
    self.speed += 10
  end

  def break
    self.speed -= 10
  end

  def shut
    self.speed = 0
  end

  def spray_paint (color)
    self.color = color
  end

  private

  def age
    Time.now.year - year
  end
end
