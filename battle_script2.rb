require_relative 'possum'


puts "name the first fighter"
fighter1 = gets.chomp

puts "name the second fighter"
fighter2 = gets.chomp


fighter1 = Fighter.new(fighter1, 200, 60, true)
fighter2 = Fighter.new(fighter2, 240, 70, true)

def choose_an_option
  puts "Choose an option: 
  1:  #{fighter1.name} to attack #{fighter2.name}
  2:  #{fighter2.name} to attack #{fighter1.name}"
end 


while fighter1.health > 0 && fighter2.health >0
  puts "***************"
  puts "#{fighter1.name} has #{fighter1.health} health and #{fighter1.power} power
#{fighter2.name} has #{fighter2.health} health and #{fighter2.power} power"
  if fighter1.invisibility == true 
    puts "#{fighter1.name} is invisible"
  else 
    puts "#{fighter1.name} is visible "
  end 

  if fighter2.invisibility == true 
    puts "#{fighter2.name} is invisible"
  else 
    puts "#{fighter2.name} is visible"
  end 

  puts "*************"
  sleep(1)
  puts "Choose an option: 
  1:  #{fighter1.name} to attack #{fighter2.name}
  2:  #{fighter2.name} to attack #{fighter1.name} 
  3:  #{fighter1.name} changes their invisibility status
  4:  #{fighter2.name} changes their invisibility status"
 
  attack_choice = gets.to_i


  if attack_choice == 1 
    fighter1.attack(fighter2)
    if fighter2.invisibility == false 
      puts 
      "
    #{fighter2.name}'s health has been reduced to #{fighter2.health}. 
    #{fighter1.name}'s health is still at #{fighter1.health}"
    end 
  end

  if attack_choice == 2
    fighter2.attack(fighter1)
    if fighter1.invisibility == false
      puts 
      "
    #{fighter1.name}'s health has been reduced to #{fighter1.health}. 
    #{fighter2.name}'s health is still at #{fighter2.health}
    "
    end 
  end

  if attack_choice == 3
    if fighter1.invisibility == false 
      fighter1.invisibility = true 
    end 
    if fighter1.invisibility == true 
      fighter1.invisibility = false
    end  
  end 

  if attack_choice == 4
    if fighter2.invisibility == false 
      fighter2.invisibility = true 
    end 
    if fighter2.invisibility == true 
      fighter2.invisibility = false
    end    
  end 

  #if attack_choice !==1 && attack_choice !==2 && attack_choice !==3 && attack_choice !==4 
    #puts "please choose an available option"
    #choose_an_option
  #end
 
end

if fighter1.health <= 0 
  puts "#{fighter2.name} killed #{fighter1.name} :("
end 
if fighter2.health <= 0 
  puts "#{fighter1.name} killed #{fighter2.name}. #{fighter2.name} wins!"
end

#puts "press 1 for fighter1 to attack and 2 for fighter2 to attack"
#attack_choice = gets




#fighter2 = Possum.new("Ralph", 230, 19, false)

#fighter2.attack(fighter1)
#puts fighter1.health


#ninja1 = Fighter.new("Hanzo", 100, 40, true)
#ninja2 = Fighter.new("Kango", 130, 30, true) #because we set the invisibility default to false, then we don't need to include the 



#have user create 2 fighters 
#have menu option to pick who attacks 
#end game wehn health <= on any fighter 
#figure out how to initialize with different number of arguments 
#figure out invisibilty 