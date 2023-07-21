# classes are modules with hierarchy

# define a module called 'speakable'
module Speakable
    def speak
      puts "I can speak!"
    end
  end
  
  # define a class called 'animal'
  class Animal
    def initialize(name)
      @name = name
    end
  end
  
  # define a class called 'dog', which inherits from 'animal'
  class Dog < Animal
    include Speakable
    # the 'include' keyword mixes in the 'speakable' module.
  end
  
  # create an instance of the 'dog' class with the name "jana"
  dog = Dog.new("jana")
  
  # call the 'speak' method on the 'dog' object
  dog.speak
  
  # output: I can speak!
  # since 'dog' includes the 'speakable' module, it inherits the 'speak' method and can use it.
  
  