require 'pry'
class Owner
  
  attr_accessor :cats, :dogs
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @species = "human"
    @@all << self
    @cats = []
    @dogs = []
  end
  
  def say_species
    "I am a #{@species}."
  end 
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end 
  
  def self.reset_all
    @@all.clear
  end
  
  def buy_cat(name)
    cat = Cat.new(name, self)
  end
  
  def buy_dog(name)
    dog = Dog.new(name, self)
  end
  
  def walk_dogs
    @dogs.each {|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    @cats.each {|cat| cat.mood = "happy"}
  end
  
  def sell_pets
    @dogs.each do |dog| 
      dog.mood = "nervous" 
      dog.owner = nil
    end
      
    @cats.each do |cat| 
      cat.mood = "nervous" 
      cat.owner = nil
    end
    @dogs.clear
    @cats.clear
  end
  
  def list_pets
<<<<<<< HEAD
    "I have #{@dogs.count} dog(s), and #{@cats.count} cat(s)."
=======
    
>>>>>>> 5f96df41547e88796544b88bbfe7123df8105939
  end
  
  
  
  
  
  
  
end