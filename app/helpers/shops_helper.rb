module ShopsHelper

	def walking_speed(shop, query)

		@distance = shop.distance_to(query)
end
