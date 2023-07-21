class Book #capital letter at the start of class name
    attr_accessor :title,:author,:pages   #attribute accosore
    def initialize(title,author,pages)#it is a constructor when create a object it calls
        # puts "creating boook"
        @title=title#@title=>:title it refer to the title in the object
        @author=author
        @pages=pages
     end
end


book1 = Book.new("Ruby on Rails","by DR.Arun kumar",4000) #create a new book1 instance object

book2= Book.new("Python on Rails","by DR.Gokul Jayathan",400) #create a new book2 instance object


puts book2.title
puts book1.title
puts book1.author
puts book1.pages