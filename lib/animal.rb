class Animal
  attr_accessor :zoo
  attr_reader :species, :gender, :origin

  @@all = []

  def initialize(species, gender, origin)
    @species = species
    @gender = gender
    @origin = origin
    @@all << self
  end

  def self.all
    @@all
  end

  def add_to_zoo(zoo)
    zoo.animals << self
    self.zoo = zoo
  end
end

