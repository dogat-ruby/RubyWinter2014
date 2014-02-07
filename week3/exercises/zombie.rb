require_relative 'named_thing'

class Zombie
	include NamedThing

	#overrides the say_name in named_thing because this comes after
	def say_name
		"uurrgghh #{@name}"
	end
	#

end