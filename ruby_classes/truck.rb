require_relative "Vehicle"

class Truck < Vehicle
def initialize (year, color, model, max_weight)
  super(year, color, model)
  @max_weight = maw_weight
end

def overload?
  @max_weight > 1000
end
end
