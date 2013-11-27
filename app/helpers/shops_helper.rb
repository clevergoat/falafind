module ShopsHelper

	def walking_speed(shop, query)

		@distance = shop.distance_to(query)

		# the average walking speed is 5 km/hr
		# the average walking speed is 0.08333 km/min

		(@distance / 0.0833).round(0)
	end

end
