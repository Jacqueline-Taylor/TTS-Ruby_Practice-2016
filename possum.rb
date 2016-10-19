require_relative 'fighter'

class Possum < Fighter 
  def initiatlize(name, health, power, invisibilty)
    super 
  end 

  def attack(target)
    puts "creepy eyesssssss attack"
    super
  end 
end


