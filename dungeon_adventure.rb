class Dungeon
  attr_accessor :player

  def initialize(player)
    @player = player #@player contains Player object
    @rooms = {}
  end

end

# class Player
#   attr_accessor :name, :location
#
#   def initialize(player_name)
#     @name = player_name
#   end
# end

Player = Struct.new(:name, :location) #optional parametres
#
# class Room
#   attr_accessor :reference, :name, :description, :connections
#
#   def initialize(reference, name, description, connections)
#     @reference = reference
#     @name = name
#     @description = description
#     @connections = connections
#   end
# end

Room = Struct.new(:reference, :name, :description, :connections) #optional parametres

me = Player.new("Costa") #creates a Player object
my_dungeon = Dungeon.new(me) #passes a player object to the newly created Dungeon object
puts my_dungeon.player.name
