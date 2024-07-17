require_relative "Vehicle"

module Critair
  def critair1?(year)
    year >= 2010
  end
end

class MyCar < Vehicle
  include Critair
  def initialize(year, color, model, seats)
    super(year, color, model)
    @seats = seats
  end
end

puts clio = MyCar.new(2006, "red", "clio", 4)
puts MyCar.gas_consumption(100, 4)
puts clio.to_s
puts clio.critair1?(clio.year)
