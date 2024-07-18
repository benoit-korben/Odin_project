module HappyHappy
  def say_something()
    return("Happy happy, joy joy")
  end
end

class Person
  include HappyHappy
  def initialize(age)
    @age =age
  end

  def age
    @age
  end

  def age_update(age)
    @age = age
  end
end

class Alien
  include HappyHappy
end

module Clueless
  def funny()
    return("AS IF?!")
  end
end

class Actress
  include Clueless
end

module MathHelper
  def multiply_by_two(i)
    i * 2
  end
end

class Homework
  include MathHelper
end

class BaseballPlayer
  def initialize(hits, walks, at_bats)
    @hits = hits
    @walks = walks
    @at_bats = at_bats
  end

  def batting_average
    (@hits / @at_bats).to_f
  end

  def base_percentage
    (@hits + @walks) / @at_bats.to_f
  end
end
