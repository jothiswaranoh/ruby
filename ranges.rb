# Inclusive Range: 1 to 5 (includes both 1 and 5)
inclusive_range = 1..5
puts inclusive_range.to_a.inspect  # Output: [1, 2, 3, 4, 5]

# Exclusive Range: 1 to 5 (excludes 5)
exclusive_range = 1...5
puts exclusive_range.to_a.inspect  # Output: [1, 2, 3, 4]

# Range with characters
char_range = 'A'..'E'
puts char_range.to_a.inspect       # Output: ["A", "B", "C", "D", "E"]

# Range used in loops
puts "Loop using Inclusive Range:"
(1..5).each do |num|
  puts "Iteration #{num}"
end
# Output:
# Iteration 1
# Iteration 2
# Iteration 3
# Iteration 4
# Iteration 5

# Range used to create a subset
numbers = [10, 20, 30, 40, 50, 60]
subset = numbers[1..3]
puts subset.inspect               # Output: [20, 30, 40]

# Range used in conditional statement
num = 25
if (1..50).include?(num)
  puts "#{num} is within the range of 1 to 50."
else
  puts "#{num} is outside the range of 1 to 50."
end
# Output: 25 is within the range of 1 to 50.
