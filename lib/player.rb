class Player
    attr_accessor :name, :life_points
    
    def initialize(player_name)
        @name = player_name    
        @life_points = 10

    end

    def show_state
        print "> "
        print "#{@name} a #{@life_points} points de vie"
    end

    def gets_domage(domage)
        @life_points = @life_points - domage
    end

    def compute_damage
        dmg = rand(0..6)
        if dmg == 0
            puts "Le gros nuloss a tapé dans le vide.."
        elsif dmg >= 5
            puts "Damn ! Grosse attaque du joueur francais !!"
        end
        return dmg
    end

    def attacks(player)
        puts "#{name} attaque #{player.name}"
        degats = compute_damage
        puts "Il lui inflige #{degats} points de dommages"
        puts "==============================="
        player.gets_domage(degats)
    end
end


