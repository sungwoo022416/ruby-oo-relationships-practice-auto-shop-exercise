require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

sungwoo = CarOwner.new("Sungwoo")
jared = CarOwner.new("Jared")
malcom = CarOwner.new("Malcom")
thomas = Mechanic.new("Thomas", "Truck")
mark = Mechanic.new("Mark", "Truck")
bogdan = Mechanic.new("Bogdan", "Sedan")

Ford_1997 = Car.new("Ford", "F1", "Truck", sungwoo, thomas)
BMW_1997 = Car.new("BMW", "M3", "Muslce", sungwoo, mark)
Chevrolet_1997 = Car.new("Cheavy", "Truck", "Sports",jared, mark)
Honda_1997 = Car.new("Honda", "Civic", "Truck", malcom, bogdan)



binding.pry
