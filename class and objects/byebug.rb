require 'byebug'

def factorial(n)
  # This will activate the debugger when the method is called.
  return 1 if n <= 1
  n * factorial(n - 1)
end
byebug 
result = factorial(5)
puts "Factorial of 5 is: #{result}"

# step or s: Execute the current line and stop at the first possible occasion (e.g., inside a method call).
# next or n: Continue to the next line in the current method. If the current line is a method call, it will execute the entire method and stop at the line after the method call.
# continue or c: Continue the program's execution until the next breakpoint or until the program finishes.
# break or b: Set a breakpoint at a specific line number. For example, break 10 will set a breakpoint at line 10.
# info locals: Show the values of local variables.
# quit or q: Exit the debugger and terminate the program