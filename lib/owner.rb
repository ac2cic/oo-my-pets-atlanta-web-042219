require 'pry'

class Owner
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []


  def initialize(species)
    @species = species
    @@all << self
    @pets = {:cats => [], :dogs => [], :fishes => []}
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a #{@species}."
  end


#def name = attr_accessor

  #def pets initialze, attr_accessor

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish

  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end


  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].each {|doggy| doggy.mood = "happy"}
  end


  def play_with_cats
    @pets[:cats].each {|catts| catts.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|pish| pish.mood = "happy"}
  end

  def sell_pets
    @pets.each do |species, arry|
      arry.each do |pet|
        pet.mood = "nervous"
      end
      arry.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end
