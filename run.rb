require 'pry'
require_relative 'owner.rb' # equivalent of importing in JS
require_relative 'dog.rb'
require_relative 'dog_owner.rb'


max = Owner.new("Max", 19)
alberto = Owner.new("Alberto", 29)

ruby = Dog.new("Ruby", "Beagle")
ripley = Dog.new("Ripley", "Golden Retriever")
rex = Dog.new("Rex", "Mutt")

# DogOwner.new(1,1)
# DogOwner.new(1,2)
# DogOwner.new(2,3)

max.adopt_dog(ruby)
max.adopt_dog(ripley)
alberto.adopt_dog(rex)

# max keeps track of the dogs
binding.pry