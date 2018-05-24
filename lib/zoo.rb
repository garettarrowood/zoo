class Zoo
  attr_accessor :animals
  attr_reader :location

  def initialize(location)
    @location = location
    @animals = []
  end
end
