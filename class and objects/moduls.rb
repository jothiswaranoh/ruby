# modules is a container that stores the gorup of the methods commands

module Tools
    def sayhi(name)
        puts "Hello #{name}"
    end
    def saybye(name)
        puts "Goodbye #{name}"
    end
end 

include Tools
Tools.sayhi("Arun")