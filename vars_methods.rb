class Metal

  @@current_temp = 70

  attr_accessor :atomic_number

  def initialize(atnum, melt)
    @atomic_number = atnum
    @melting = melt
  end

  def self.current_temp=(x) #setter
    @@current_temp = x
  end

  def self.current_temp #getter
    @@current_temp
  end

  def liquid?
    @@current_temp >= @melting
  end

end

aluminium = Metal.new(13, 1236)
copper = Metal.new(29, 1982)
gold = Metal.new(79, 1948)

Metal.current_temp = 1700

puts aluminium.liquid?
puts copper.liquid?
puts gold.liquid?

Metal.current_temp = 2100

puts aluminium.liquid?
puts copper.liquid?
puts gold.liquid?
