class Background < ApplicationRecord

		

	#Active admin will take this part
	def display_name
		'Nom: ' + name + ' Couleur:' + color 
	end
end
