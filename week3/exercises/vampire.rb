require './monster.rb'
class Vampire < Monster
	def initialize(noc=true, legs=2, name ="Vampire", vul=[:garlic, :sunlight], dangers=[:bites])
		super
	end

  def attack! human
    puts "hi from Vampire"
  end


end
#pass along the paramets to super, it looks up the parent class with the same name of the method which is initialize