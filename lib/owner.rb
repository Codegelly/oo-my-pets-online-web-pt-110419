class Owner
#   attr_accessor :name 
  
#   def initialize(name)
#     @name = name 
#   end 
# end

# attr_accessor :pets, :name
# attr_reader :species

#   @@all = []

#   def initialize(species)
#     @species = species
#     @@all << self
#     @pets = { :fishes => [], :dogs => [], :cats => [] }
#   end

#   def self.all
#     @@all
#   end

#   def self.reset_all
#     @@all.clear
#   end

#   def self.count 
#     @@all.size
#   end

#   def say_species
#     "I am a #{species}."
#   end

 

#   def buy_cat(name)
#     cat = Cat.new(name)
#     pets[:cats] << cat
#   end

#   def buy_dog(name)
#     dog = Dog.new(name)
#     pets[:dogs] << dog
#   end

#   def walk_dogs
#     pets[:dogs].map {|dog| dog.mood = "happy"}

#   end

#   def play_with_cats
#     pets[:cats].map {|cat| cat.mood = "happy"}
#   end

#   def feed_pets
#     pets[:pets].map {|fish| pet.mood = "happy"}
#   end

#   def sell_pets
#     pets.each do |type, pets|
#       pets.map {|pet| pet.mood = "nervous"}
#     end
#     pets.clear
#   end

#   def list_pets
#     "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
#   end

# end

  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @cats = []
  end 
  
  
  def self.all
    @@all
  end 
  
  def say_species
  "I am a #{@species}."
  end
  
  def self.count
    self.all.count
  end 
  
  
  
  def self.reset_all
    self.all.clear
  end 
  
  
  def cats
  Cat.all.select {|cat| cat.owner == self}
  end
  
  
   def dogs 
  Dog.all.select {|dog| dog.owner == self}
  end
  
  
  def buy_cat(name)
    Cat.new(name, self)
  end 
  
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  
  def walk_dogs
    Dog.all.select {|dog| dog.mood = "happy"}
  end 
  
  
  def feed_cats
    Cat.all.select {|cat| cat.mood = "happy"}
  end
  
  
  def sell_pets
    Dog.all.select {|dog|
      dog.mood = "nervous"
      dog.owner = nil
    }
    Cat.all.select {|cat|
      cat.mood = "nervous"
      cat.owner = nil
    }
  end 
  
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end 
  
  
  
end


