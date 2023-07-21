# classes are objects & variable scope

# define a class called 'Person'
class Person
    attr_accessor :name  # create a getter and setter for 'name' attribute
  
    @@class_variable = "I am a class variable"  # class variable accessible by all instances
  
    def initialize(name)
      @name = name  # instance variable, unique to each instance of the class
    end
  
    def say_hello
      puts "Hello, my name is #{@name}."
      puts "#{@@class_variable}"
      puts private_method
    end
  
    def self.class_method #without object we can use it
      puts "This is a class method"
      new_instance = self.new("Ravi") # Create a new instance to call the private method
      new_instance.send(:private_method)
     
    end
  
    private
  
    def private_method
      puts "This is a private method. #{@name}."#doubt
    end
  end
  
  # create an instance of the 'Person' class with the name "Jothis"
  person1 = Person.new("Jothis")
  
  # call the 'say_hello' method on the 'person1' object
  person1.say_hello
  
  # call a class method directly on the class, without creating an instance
  Person.class_method
 
  # output:
  # hello, my name is Jothis.
  # I am a class variable
  # this is a class method.
  