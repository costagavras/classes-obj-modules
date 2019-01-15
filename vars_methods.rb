class Metal

  @@current_temp = 70

  attr_accessor :atomic_number

  def initialize(atnum, melt)
    @atomic_number = atnum
    @melting = melt
  end

  def self.current_temp=(x)
    @@current_temp = x
  end

  def self.current_temp
    @@current_temp
  end

  def liquid?
    @@current_temp >= @melting
  end

end

aluminum = Metal.new(13, 1236)
copper = Metal.new(29, 1982)
gold = Metal.new(79, 1948)
