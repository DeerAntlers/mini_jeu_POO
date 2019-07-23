require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

binding.pry
#Il ne faut mettre binding.pry que lorsque l'on veut tester

puts "Bienvenue dans le jeu 'ILS VEULENT TOUS MA POO' !
Le but du jeu est d'être le dernier survivant !"

def HumanPlayer(name)
puts "Quel est ton prénom?"
print ">"
@name = get.chomp
end
HumanPlayer