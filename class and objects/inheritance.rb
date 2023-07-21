class Chef
    def make_chicken
        puts "The chef makes chicken"
    end
    def make_pork
            puts "The chef makes pork"
        end
    def make_fish
            puts "The chef makes fish"
        end
    def make_meat
            puts "The chef makes meat"
        end
end
class Italychef < Chef #inherited from the chef
    def make_meat #overrides
        puts "The chef makes meat good"
    end
end
intaly=Italychef.new()
intaly.make_chicken()
intaly.make_pork()
intaly.make_meat()
chef=Chef.new()
chef.make_chicken
chef.make_pork
