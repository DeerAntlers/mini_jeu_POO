require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1= Player.new ("Josiane")
player2= Player.new ("José")

binding.pry
#Il ne faut mettre binding.pry que lorsque l'on veut tester

puts "#{player1.name} est une professionnnelle de jeux en arcade depuis 1983, l'année où elle a fêté ses 50 ans 
et #{player2.name} est un grand joueur en ligne admiré par toute une génération, 
il a d'ailleurs gagné 950 Frcs au cours de l'année 1996 en jouant sur le Minitel"

while player1.life_points > 0 and player2.life_points > 0
    puts "\n Voici l'etat de chaque joueur:"
    puts "#{player1.show_state}"
    puts "#{player2.show_state}"


    puts "Passons à la phase d'attaque:"
    player1.attacks(player2)
    if player2.life_points <= 0 
        break
    end
end

    player2.attacks(player1)
