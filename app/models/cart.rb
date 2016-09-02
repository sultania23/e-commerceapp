class Cart
	attr_reader :items
	def initialize
		@items = []
	end

	def add_item product_id
		item = @items.find { |item| item.product_id == product_id }
		if item 
			item.increment
		else
		@items << CartItem.new(product_id)
	    end
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
