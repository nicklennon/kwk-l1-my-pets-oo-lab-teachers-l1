class Owner
  # code goes here
  attr_reader :name, :species
  attr_accessor :mood, :name, :pets
  
  def initialize(species)
    @species = species
    @pets={:fishes => [], :dogs => [], :cats => []}
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name).name
  end
  
  def buy_cat(name)
    @pets[:cats] << Cat.new(name).name
  end
  
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name).name
  end
  
  def list_pets
    "I have #{@pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
  
 end
