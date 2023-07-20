# while loop
puts "While Loop:"
count = 1
while count <= 5
  puts "Iteration #{count}"
  count += 1
end
puts

# do-while loop (begin-end loop)
puts "Do-While Loop:"
count = 1
begin
  puts "Iteration #{count}"
  count += 1
end while count <= 5
puts

# for loop
puts "For Loop:"
for i in 1..5
  puts "Iteration #{i}"
end
puts

# for loop with an array
puts "For Loop with Array:"
fruits = ["apple", "banana", "orange"]
for fruit in fruits
  puts "I love #{fruit}s!"
end
puts

# each iterator
puts "Each Iterator:"
fruits.each do |fruit|
  puts "I love #{fruit}s!"
end
puts

# times loop
puts "Times Loop:"
5.times do |count|
  puts "Iteration #{count + 1}"
end
puts

# loop do
puts "Loop Do:"
count = 1
loop do
  puts "Iteration #{count}"
  count += 1
  break if count > 5
end
puts
# output for all the loop in which Iteration
# Iteration 1
# Iteration 2
# Iteration 3
# Iteration 4
# Iteration 5'
# For Loop with Array:
# I love apples!
# I love bananas!
# I love oranges!

# Each Iterator:
# I love apples!
# I love bananas!
# I love oranges!