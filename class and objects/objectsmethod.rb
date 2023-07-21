class Student #capital letter at the start of class name
    attr_accessor :name,:major,:gpa   #attribute accosore
    def initialize(name,major,gpa)#it is a constructor when create a object it calls
        # puts "creating boook"
        @name=name#@title=>:title it refer to the title in the object
        @major=major
        @gpa=gpa
     end
    def has_honors
        if @gpa >=3.5
            return true
        end
        return false
    end
end
student1=Student.new("vasanth","business",2.6)
student2=Student.new("vasanth","business",3.6)

puts student1.has_honors#falese
puts student2.has_honors#true

