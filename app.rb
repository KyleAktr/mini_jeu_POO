require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("José")
player2 = Player.new("Patou")

    while player1.life_points > 0 && player2.life_points >0
        puts
        puts "Voici l'état de nos joueurs :"
        puts "#{player1.show_state}"
        puts "#{player2.show_state}" 
        puts "======================================" 
        sleep 5
        puts
        puts "Passons à la phase d'attaque :"
        puts
        player1.attacks(player2)
            if player2.life_points <= 0
                puts "Fatallity ! #{player2.name} is dead !"
                puts "Notre grand gagnant est #{player1.name} !!!"
                break
            else 
                puts
                puts "Attention à la contre offensive de #{player2.name}"
                sleep 5
                player2.attacks(player1)
                if player1.life_points <= 0 
                    puts "Fatallity ! #{player1.name} is dead !"
                    puts "Notre grand gagnant est #{player2.name} !!!"
                end
                sleep 5
            end
    end


binding.pry