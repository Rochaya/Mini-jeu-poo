require 'bundler'
Bundler.require

require_relative 'lib/game.rb'
require_relative 'lib/player.rb'

puts "Choisis un nom pour ton joueur 1 !"
user1 = gets.chomp.to_s
puts "Choisis un nom pour ton joueur 2 !"
user2 = gets.chomp.to_s

$player1 = HumanPlayer.new("#{user1}")
$player2 = HumanPlayer.new("#{user2}")
#puts user1
#puts user2
puts "-------------------------------------------
|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |
|Le but du jeu est d'être le dernier survivant !|
-------------------------------------------------"

while ($player1.life_points > 0 && $player2.life_points > 0)
    puts "************************** SANTE ET LVL *********************************"
    
    puts $player1.show_states
    puts $player2.show_states

    puts "***************************** FIGHT #! **********************************"

    puts $player1.attack($player2)
    if $player2.life_points <= 0
        break
    end
    puts $player2.attack($player1)
    if $player1.life_points <= 0
        break
    end
    
    puts "***************************** LOOT **************************************"
    def choice_loot
        puts "Loterie loot choisis une option:"
        puts "1 - Je tente ma chance pour une meilleur arme !"
        puts "2 - Je prefere recuperer de la vie !"
        choice = gets.chomp.to_i
    
        case choice
        when 1
            puts $player1.search_weapon
            puts $player2.search_weapon
        when 2
            puts $player1.search_pack_health
            puts $player2.search_pack_health
        else
            puts "Choisis une option parmis ces 2 possibilites"
        end
    end
    choice_loot
end
puts "************** JEU TERMINER ***************"

#binding.pry