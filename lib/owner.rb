require 'pry'

class Owner
  attr_accessor :name, :fish

  @@all = []

  def initialize(name, species = "human")
    @name = name
    @@all << self
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

  def species
    @species
  end

  def say_species
    return "I am a #{species}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

    def play_with_cats
      pets[:cats].each do |cat|
        cat.mood = "happy"
      end
    end

    def feed_fish
      pets[:fishes].each do |fish|
        fish.mood = "happy"
      end
    end

    def sell_pets
      binding.pry
      @pets.each do |type, pet|
      end
    end



end
