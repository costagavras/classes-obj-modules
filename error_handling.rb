# class Person
#   def initialize(name)
#     raise ArgumentError, "No name present" if name.empty?
#   end
# end
#
# fred = Person.new("")

#handling exceptions
begin
  puts 10 / 0
rescue
  puts "You caused an error!"
end

#identifying exceptions
begin
  puts 10 / 0
rescue => e
  puts e.class
end

catch(:finish) do
  1000.times do
    x = rand(1000)
    throw :finish if x == 123
  end

  puts "Generated 1000 random numbers without generating 123"
end

def generate_random_number_bar_123
  x = rand(1000)
  throw :finish if x == 123
end

catch(:finish) do
  1000.times{generate_random_number_bar_123}
  puts "Generated 1000 random numbers without generating 123!"
end
