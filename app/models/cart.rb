class Cart
	attr_reader :items
	def initialize
		@items = []
		@quantity = 0
	end
	def add_item product_id
		item = @items.find { |item| item == product_id}
		if item
			item.quantity.increment
		end
		@items << product_id
		
	end
	def empty?
		if @items.length==0
			true
		else
			false
		end
	end
	def length
		@items.length
	end
end
