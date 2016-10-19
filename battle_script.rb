require_relative 'possum'


fighter1 = Fighter.new("Rocky", 200, 20 ,true)
fighter2 = Possum.new("Ralph", 230, 19, false)
fighter2.attack(fighter1)
puts fighter1.health
puts fighter1.inspect 

ninja1 = Fighter.new("Hanzo", 100, 40, true)
ninja2 = Fighter.new("Kango", 130, 30, true) #because we set the invisibility default to false, then we don't need to include the 



#have user create 2 fighters 
#have menu option to pick who attacks 
#end game wehn health <= on any fighter 
#figure out how to initialize with different number of arguments 
#figure out invisibilty 