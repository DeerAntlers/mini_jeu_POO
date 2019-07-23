class Player #Toutes les methodes sont dans la classe donc le end vient à la fin
    attr_accessor :name, :life_points



    def initialize(name)
        @life_points = 10
        @name = name
        
    end


    def show_state
        puts "#{name} a #{life_points} point(s) de vie"
    end


    def gets_damage(damage_received )
        @life_points -= damage_received 
        if @life_points <= 0 
            puts "#{@name} a été tué !"
    
        end
    end


    def attacks(opponent)
        puts "Le joueur #{@name} attaque le joueur #{opponent.name}"
        damage_received = compute_damage
        puts "il lui inflige #{damage_received} point(s) de dommages"
        opponent.gets_damage(damage_received)
    end

    def compute_damage
        return rand(1..6)
    end
end

class HumanPlayer < Player #Version2
#Le signe < indique que la classe HumanPlayer a hérité de la classe Player donc elle en reprend les caractéristiques
attr_accessor :weapon_level

    def initialize(name)
    @life_points = 100
    @name = name
    @weapon_level = 1

    def show_state
        puts "#{name} a #{life_points} point(s) de vie et une arme du niveau #{weapon_level}"
    end

    def compute_damage
        rand(1..6) * @weapon_level
    end

    def search_weapon(new_weapon)
        @new_weapon = rand(1..6)
       puts "Tu as trouvé une arme de niveau #{@new_weapon }".
        if @new_weapon > @weapon_level
    puts "Yes ! Cette arme est meileure que ton arme actuelle, tu la prends pour la suite de l'aventure !"
        else @new_weapon <= @weapon_level       
    puts "Merdouille ! Cette arme n'est pas mieux que ton arme actuelle !"
        end
    end

    def search_health_pack
        @health_pack = rand(1..6)
        if @health_pack = 1
            puts "Tu n'as rien trouvé"
        elsif @health_pack = (2..5) 
            return (@life_points + 50) 
            puts "Bravo, tu as trouvé un pack de +50 points de vie !"
        else  @health_pack = 6    
            return (@life_points + 80) 
            puts "Bravo, tu as trouvé un pack de +80 points de vie !"
        end
    end
end