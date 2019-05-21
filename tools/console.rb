require_relative '../config/environment.rb'

#beings my gallery instances
met= Gallery.new("Met","NYC")
og= Gallery.new("OG","CA")
supreme = Gallery.new("Supreme","NYC")
odyssey= Gallery.new("Odyssey","Paris")


#beings my artist instances
kay_1 = Artist.new("Kay_1", 5)
kay_2 = Artist.new("Kay_2", 10)
kay_3 = Artist.new("Kay_3", 15)



#beings my painting instances

warrior = Painting.new("Warrior", 200,kay_1,og)
fighter = Painting.new("Fighter", 100,kay_2,supreme)
sayian = Painting.new("Sayian", 500,kay_3,met)
nine_tails = Painting.new("Nine_tails", 300,kay_1,odyssey)


binding.pry

puts "Bob Ross rules."
