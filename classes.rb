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

module ToolBox
  class Ruler
    attr_accessor :length
  end
end

module Country
  class Ruler
    attr_accessor :name
  end
end

a = ToolBox::Ruler.new
a.length = 50
b = Country::Ruler.new
b.name = "Napoleon I"

module UsefulFeatures
  def class_name
    self.class.to_s
  end
end

class Person
  include UsefulFeatures
end

x = Person.new
puts x.class_name

module AnotherModule
  def do_stuff
    puts "This is a test"
  end
end

include AnotherModule
do_stuff

#longest word check
my_array = %w{this is a test of the longest word check}
longest_word = ""
my_array.each do |word|
  longest_word = word if longest_word.length < word.length
end

puts longest_word
