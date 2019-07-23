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
            puts "#{name} a été tué !"
    
        end
    end


    def attacks(opponent)
        puts "Le joueur #{name} attaque le joueur #{opponent.name}"
        damage_received = compute_damage
        puts "il lui inflige #{damage_received} point(s) de dommages"
        opponent.gets_damage(damage_received)
    end

    def compute_damage
        return rand(1..6)
    end
end