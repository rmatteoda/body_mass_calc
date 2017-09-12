module BodyMassHelper

	def calculate_bmi(weight, height)
		@body_mass_index = weight / (height * height)
		return @body_mass_index
	end
end
