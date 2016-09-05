class OrdersController < ApplicationController
	before_filter :initialize_cart

	def create
		@order_form = OrderForm.new(
			user: User.new(order_params[:user]),
			cart: @cart
			)
		if @order_form.save
			redirect_to root_path, notice: "thank you for placing a order"
		else
			render "carts/checkout"
		end
	end


	private
	def order_params
		params.require(:order_form).permit(
			user: [ :name, :email, :phone, :postal_code, :address, :country, :city]
			)
	end
end
