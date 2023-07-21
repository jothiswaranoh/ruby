
# passing by value (for primitives)

# when we pass a primitive variable to a method, ruby passes a copy of the value.
# any changes made to the parameter inside the method do not affect the original variable outside the method.

def modify_value(num)
    num += 10  # this only modifies the local copy of 'num' within the method
  end
  
  num = 5
  modify_value(num)
  puts num
  # output: 5
  # the original value of 'num' remains unchanged since we only modified the local copy inside the method.
  
  puts "-" * 30
  
  # passing by reference (for objects)
  
  # in ruby, variables that hold complex objects are references to those objects.
  # when we pass an object (like an array) to a method, ruby passes a reference to the original object.
  # any changes made to the parameter inside the method affect the original object outside the method.
  
  def modify_array(arr)
    arr << 4  # this modifies the original array passed as an argument
  end
  
  numbers = [1, 2, 3]
  modify_array(numbers)
  puts numbers.inspect
  # output: [1, 2, 3, 4]
  # the original array 'numbers' is modified since it was passed as a reference to the method.
  
  puts "-" * 30
  
  # pass by value with an object reference (a common misconception)
  
  # it's important to note that although ruby passes object references by value,
  # modifying the reference itself inside the method does not affect the original reference.
  
  def modify_reference(arr)
    arr = [10, 20, 30]  # this only modifies the local copy of 'arr' within the method
  end
  
  numbers = [1, 2, 3]
  modify_reference(numbers)
  puts numbers.inspect
  # output: [1, 2, 3]
  # the original reference 'numbers' is unchanged since we only modified the local copy inside the method.
  