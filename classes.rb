#nested classes
class Drawing
  def self.give_me_a_circle
    Circle.new
  end

  class Line
  end

  class Circle
    def what_am_i
      "This is a circle"
    end
  end
end

a = Drawing.give_me_a_circle
puts a.what_am_i
a = Drawing::Circle.new
puts a.what_am_i
# a = Circle.new
# puts a.what_am_i

#Constants are defined within the scope of the current class and
#made available to all child classes, unless they're overriden.

#Modules

module NumberStuff
  def self.random
    rand(1000)
  end
end

module LetterStuff
  def self.random
    (rand(26) + 65).chr
  end
end

puts NumberStuff.random
puts LetterStuff.random
