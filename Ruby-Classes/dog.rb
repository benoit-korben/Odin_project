class GoodDog
  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} says Arf!"
  end

  def get_name
    @name
  end

  def set_name(name)
    @name = name
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak

ozi = GoodDog.new("Ozi")
puts ozi.speak
puts ozi.get_name
ozi.set_name("saucisse")
puts ozi.get_name
