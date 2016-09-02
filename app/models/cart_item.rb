class CartItem
 attr_reader :product_id, :quantity

	def initialize(product_id,quantity = 1)
		@product.id = product_id
		@quantity = quantity
	end
	
end