# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

 class Unicorn
   def initialize(name)
     @name = name
     @color = "silver"
  end

  def say(message)
    p "*~*#{message}*~*"
  end
end

unicornk = Unicorn.new("Voldemort")
p unicornk
p unicornk.say ("His name is Voldemort")


#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
  def initialize(name)
    @name = name
    @pet = "bat"
    @thirsty = true
  end

  def change_pet(new_pet)
    @pet = new_pet
  end

  def drink
    @thirsty = false
  end
end

chocula = Vampire.new("Count")
p chocula

chocula.change_pet("eagle")
p chocula

p chocula.drink

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
  def initialize(name, rider, color)
    @name = name
    @rider = rider
    @color = color
    @is_hungry = true
  end

  def eat (food)
    if food >= 4
      @is_hungry = false
    end
  end
end

drag1 = Dragon.new("Shenron", "Eragon", "Maleficent")
p drag1

drag1.eat(2)
p drag1

drag1.eat(8)
p drag1

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
  def initialize(name, disposition)
    @name = name
    @disposition = disposition
    @age = 0
    @its_adult = false
    @its_old = false
    @has_ring = false

    if @name == "Frodo"
      @has_ring = true
    else
      @has_ring = false
    end

    def change_age(age_new)
      @age = age_new
      if age_new >= 33
        @is_adult = true
      end

      if age_new >= 101
        @is_old = true
      end

      def celebrate_birthday
        p "It's your #{@age +1} year hobbit!"
      end
    end
    end
end

hobbit007 = Hobbit.new("Frodo", "kind")

hobbit007.change_age(102)
p hobbit007
p hobbit007.celebrate_birthday
