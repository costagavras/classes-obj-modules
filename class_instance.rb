class MyClass

  CLASS_CONST = "hello1"

  @@var = "hello2"
  @var = "hello3"

  def initialize
    @var = "hello4"
  end

  def mymethod
    puts "mymethod-----"
    puts CLASS_CONST
    puts @@var
    puts @var
    puts "---------------"
  end

  def self.classmethod1
    puts "classmethod1"
    puts CLASS_CONST
    puts @@var
    puts @var
    puts "---------------"
  end

end

def MyClass.classmethod2
  puts "MyClass.classmethod2"
  puts MyClass::CLASS_CONST
  # puts @@var
  puts @var
  puts "---------------"
end

puts "test"
newclass = MyClass.new
puts newclass.mymethod #hello1, hello2, hello4
puts MyClass.classmethod1 #hello1, hello2, hello3
puts MyClass.classmethod2 #hello1, error - hello2 - error, hello3
