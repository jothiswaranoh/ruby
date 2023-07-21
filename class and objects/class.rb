class Book #capital letter at the start of class name
    attr_accessor :title,:author,:pages             #attribute accosore
end


book1 = Book.new() #create a new book1 instance object
book1.title = "Ruby on Rails"
book1.author = "by DR.Arun kumar"
book1.pages = 300

puts book1.title
puts book1.author
puts book1.pages

book2= Book.new() #create a new book2 instance object
book2.title = "Python on Rails"
book2.author = "by DR.Gokul Jayathan"
book2.pages = 400

puts book2.title