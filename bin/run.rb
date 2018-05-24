require 'pry'
require_relative '../lib/animal.rb'
require_relative '../lib/zoo.rb'

def show_deats(obj)
  puts obj
  if obj.respond_to?(:location)
    puts "location: #{obj.location}"
  else
    puts "species: #{obj.species}"
    puts "gender: #{obj.gender}"
    puts "origin: #{obj.origin}"
  end
  puts "--------------"
end

atlanta_zoo = Zoo.new("Atlanta")
boston_zoo = Zoo.new("Boston")

giraffe = Animal.new("giraffe", "male", "Africa")
panda = Animal.new("panda", "female", "China")
panda2 = Animal.new("panda", "male", "Japan")
koala = Animal.new("koala", "female", "Australia")

panda.add_to_zoo(atlanta_zoo)


Animal.all.each do |animal|
  show_deats(animal)
end

show_deats(atlanta_zoo)

Pry.start
