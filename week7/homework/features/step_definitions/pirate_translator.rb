class PirateTranslator	

	TRANSLATION = {
	 	"Hello Friend" => "Ahoy Matey"	
	}

	def say(input)
		TRANSLATION[@input].to_s
	end

	def translate
		TRANSLATION[@input]
		"Shiber Me Timbers You Scurvey Dogs!!"
	end 

end