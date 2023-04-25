require 'bundler'
Bundler.require

require_relative 'lib/game.rb'
require_relative 'lib/player.rb'

#player1 = Player.new("Olivier")
#player2 = Player.new("Valentin")
player1 = HumanPlayer.new("Olivier")
player2 = HumanPlayer.new("Valentin")
while (player1.life_points > 0 && player2.life_points > 0)
    puts "************************** SANTE ET LVL *********************************"
    
    puts player1.show_states
    puts player2.show_states

    puts "***************************** FIGHT #! **********************************"

    puts player1.attack(player2)
    if player2.life_points <= 0
        break
    end
    puts player2.attack(player1)
    if player1.life_points <= 0
        break
    end
    
    puts "***************************** LOOT **************************************"
    
    puts player1.search_weapon
    puts player1.search_pack_health
    puts player2.search_weapon
    puts player2.search_pack_health
end
puts "************** JEU TERMINER ***************"
#binding.pry