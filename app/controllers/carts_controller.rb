class CartsController < ApplicationController

	before_filter :initialize_cart

	def add 
		@cart.add_item(params[:id])
		session["cart"] = @cart.serialize
		product = Product.find(params[:id]) 
		redirect_to :back, notice: "added to cart #{product.name}"
	end

	def show 
	end

	def checkout
		@order_form = OrderForm.new(user: User.new)
		@client_token = Braintree::ClientToken.generate
	end

	
end