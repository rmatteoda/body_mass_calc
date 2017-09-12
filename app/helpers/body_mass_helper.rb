module BodyMassHelper

	def calculate_bmi(weight, height)
		@body_mass_index = weight / (height * height)
		return @body_mass_index.to_f.round(2) 
	end
end
