require 'pry'

class Clown
  
  attr_accessor :name, :age, :skill, :fears

  @@all_clowns_array = []
  @@clowns_names_array = []
  @@clown_ages_array = []
  @@fearless_clowns_array = []

  def initialize(name, age, skill, fears)
    @name = name
    @age = age
    @skill = skill
    @fears = fears

    @@all_clowns_array << self
    @@clowns_names_array << self.name
  end

  def life_about_age(new_age)
    @age = new_age
  end

  def overcome_fears
    @fears = nil
    @@fearless_clowns_array << self
  end

  def say_hi
    puts "Hello my name is #{@name}. I'm #{@age} years old. I'm good at #{@skill} and terrified of #{@fears}."
  end

  def self.all
    @@all_clowns_array
  end

  def self.names 
    @@clowns_names_array
  end

  def self.find_by_name(name)
    Clown.all.select do |clown_instance|
       clown_instance.name == name
    end
  end

  def self.oldest
    Clown.all.select do |clown_instance|
      @clown_instance = clown_instance
      @@clown_ages_array << clown_instance.age
    end
    if @@clown_ages_array.max == @clown_instance.age
      @clown_instance
    end
  end

  def self.fearless
    @@fearless_clowns_array 
  end

end # end of Clown class

clown1 = Clown.new('Krusty', 55, 'Juggling', 'Failure')
clown2 = Clown.new('Juju', 38, 'Dancing', 'Humilliation')
clown3 = Clown.new('Li', 88, 'Magic tricks', 'Heights')
# p clown1.name
# p clown1.name = ('Bruce')
# p clown1.age
# p clown1.skill
# p clown1.skill = ('Swimming')
# p clown1.fears
# p clown1.life_about_age(66)
# clown3.overcome_fears
# clown1.say_hi
# p Clown.names
# p Clown.find_by_name('Juju')
# p Clown.oldest
# p Clown.fearless
