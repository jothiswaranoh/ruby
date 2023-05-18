puts "company email genrate"
print "Name: "
name = gets.chomp
print "Lastname: "
lastname=gets.chomp
print "Company: "
company=gets.chomp
# email=name+"."+lastname+"@"+company+".com"
email=""
email<<name.downcase.split.join(".")
email<<"."
email<<lastname.downcase.split.join(".")
email<<"@"
email<<company.downcase.split.join
email<<".com"

puts (email)
