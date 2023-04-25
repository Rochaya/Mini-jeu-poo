class Player
    attr_accessor :name, :life_points

    def initialize(name)
        @name = name
        @life_points = 80
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

class HumanPlayer < Player
    attr_accessor  :weapon_lvl

    def initialize(name)
        super(name)
        @life_points = 100
        @weapon_lvl = 1
    end

    def show_states
        puts "#{self.name} a #{self.life_points} de points de vie et une arme lvl #{self.weapon_lvl} !"
    end

    def compute_damage
        return rand(1..7) * weapon_lvl
    end

    def search_weapon
        new_weapon = rand(1..7)
        if new_weapon > weapon_lvl
            @weapon_lvl = new_weapon
            puts "#{name} trouver une meilleur arme, elle est maintenant lvl #{new_weapon} !"
        else
            puts "#{name} l'as dans l'os il continue avec son arme pourrie"
        end
    end

    def search_pack_health
        new_pack_health = rand(1..7)
        if new_pack_health == 1
            puts "#{name} n'as rien trouver"
        elsif
            new_pack_health = (2..5)
            if @life_points <= 50
                @life_points += 50
            end
            puts "#{name} a trouver un pack de 50 pts de vie"
        elsif
            new_pack_health == 6
            if @life_points <= 20
                @life_points += 80
            end
            puts "Waow, #{name} a trouver un pack de 80 pts de vie"
        end
    end
end
