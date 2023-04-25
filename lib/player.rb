class Player
    attr_accessor :name, :life_points

    def initialize(name)
        @name = name
        @life_points = 10
    end

    def show_states
        puts "#{self.name} a #{self.life_points} de points de vie !"
    end

    def get_damage(damage)
        @life_points -= damage
    end
    
    def compute_damage
        return rand(1..7)
    end

    def attack(player)
        damage = compute_damage
        player.get_damage(damage)
        puts "#{player.name} a recu #{damage} de degats !"
        if player.life_points <= 0
            puts "Le joueur #{player.name} a ete tuer"
        end
    end
end

class HumanPlayer
    
end
