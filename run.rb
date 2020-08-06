require 'pry'
require_relative "./models/clown"

# testing your code below
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
clown3.overcome_fears
# clown1.say_hi
# p Clown.names
# p Clown.find_by_name('Juju')
# p Clown.oldest
 p Clown.fearless

# binding.pry
"pls"