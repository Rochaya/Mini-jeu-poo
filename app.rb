require 'bundler'
Bundler.require

require_relative 'lib/game.rb'
require_relative 'lib/player.rb'

player1 = Player.new("Olivier")
player2 = Player.new("Valentin")
while (player1.life_points > 0 && player2.life_points > 0)
    puts "*********** PRESENTATION *********"
    
    puts player1.show_states
    puts player2.show_states

    puts "*********** FIGHT ************"

    puts player1.attack(player2)
    if player2.life_points <= 0
        break
    end
    puts player2.attack(player1)
    if player1.life_points <= 0
        break
    end
end
binding.pry