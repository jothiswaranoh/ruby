puts "body mass index(bmi) caterigoies"
puts "..severe thinnes<16"
puts ".. moderare thinnes-17"
puts "..normal 18.5-25"
puts "..over weight<30"

puts "body mass index (bmi calulator)"
print("height(cm)")
height=gets.chomp.to_f
print("weight in(kg)")
weight=gets.chomp.to_f 
bmi=weight/(height/100)**2
puts("BMI =#{bmi}")