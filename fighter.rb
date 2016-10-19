class Fighter 
  attr_reader :name
  attr_accessor :health, :power, :invisibility 

  def initialize(name, health, power, invisibility)
    #if name = "unknown fighter" then you still need to write it in order
    # using the colon allows you to iniitalize things not in order yay 
    @name = name 
    @health = health 
    @power = power
    @invisibility = invisibility 
  end 

  def attack(target)
    if check_invisibility_target?(target)
      puts "#{self.name} tried to attack #{target.name} but, like, #{target.name} was invisible"
    elsif check_invisibility_attacker?(self) #passes in self, even though below calling it attacker. Self is the object that made the method call 
      puts "#{self.name} cannot attack because it's like invisible"
    else
      target.lose_health(self)
      puts "#{self.name} attacks #{target.name} for #{self.power} damage."
    end 
  end
    #target - power of object that attacked 
    #target loses the amount of health of attacking power 
    #being able to call this method as an object in the code  

  def lose_health(attacker)
    self.health -= 0.5*attacker.power
  end

  def check_invisibility_target?(target)
    if target.invisibility == true
      return true 
    else 
    end 
  end

  def check_invisibility_attacker?(attacker)
    if attacker.invisibility == true
      return true 
    else 
    end 
  end

end 