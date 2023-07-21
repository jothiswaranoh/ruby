# Blocks, Closures, and Binding Example

# Blocks:

# Blocks are surrounded by either curly braces {} or do..end.
# They are used to group together lines of code to perform a specific task.
# Blocks can be used with methods that yield control to the block, and the block can be executed within the method's context.

# Using a block with the 'each' method
fruits = ['apple', 'banana', 'orange']
fruits.each do |fruit|
  puts "I love #{fruit}s!"
end

# Output:
# I love apples!
# I love bananas!
# I love oranges!

puts "-" * 30

# Closures:
# A closure is a function (method) along with its captured variables from the surrounding environment.
# In Ruby, closures are created when a block captures and retains the surrounding context, even after the block is defined.
# Closures can access variables from their containing scope, even when executed outside that scope.

def multiplier(factor)
  # The inner proc captures the 'factor' variable from the outer scope
  proc { |n| n * factor }
end

multiply_by_5 = multiplier(5)
puts multiply_by_5.call(10) # Output: 50

puts "-" * 30

# Binding:
# A binding is an object that encapsulates the execution context at a particular point in the code's execution.
# It retains the values of local variables, self, and constants that are in scope at that specific point in code.
# Bindings are commonly used in metaprogramming to evaluate code in a different context or to store the state of a particular execution point.

def greet(name)
  message = "Hello, #{name}!"
  binding   # returns a binding object with the current execution context
end

binding_obj = greet("Alice")
eval("puts message", binding_obj)  # Output: Hello, Alice!
