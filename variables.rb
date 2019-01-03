class Myclass

  @x = 1 #becomes a class instance variable
  @y = 2

  def my_method
    @x = 3 #another instance variable
    puts @x
    #y is not accessible here
    puts @y
  end

end

a = Myclass.new
a.my_method
