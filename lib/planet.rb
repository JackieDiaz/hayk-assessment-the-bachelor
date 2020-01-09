require 'pry'

class Planet

    def initialize(name,order,has_life?)
      #attributes:
      #@ is a instance veriable: thus scoped to the entire class
        @name = name
        @order = order
        @has_life? = has_life?
    end 
    


end 


earth = Planet.new("Earth", 3, true)
venus = Planet.new("venus",3,true)
binding.pry
# string, int, boolean 