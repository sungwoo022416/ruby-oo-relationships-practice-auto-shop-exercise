class Car
  @@all = []
  
  attr_accessor :car_owner, :mechanic
  attr_reader :make, :model, :classification

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic

    @@all <<self
  end

    # - `Car.all` Get a list of all cars
  def self.all
    @@all
  end

  # - `Car.classifications` Get a list of all car classifications
  def self.classifications
    Car.all.select {|car| car.classification}.map(&:classification)
  end
  # - `Car.find_mechanics(classification)` Get a list of mechanics that have an expertise that matches the passed in car classification
  def self.find_mechanic(classification)
    Mechanic.all.select {|mech| mech.specialty = classification}.map(&:name)
  end

end
