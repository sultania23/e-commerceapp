class OrderMailer < ApplicationMailer
    default from: 'from@example.com'
	def order_confirmation (order)
		@order = order
		mail to: @order.user.email, subject: "your order id is (##{order.id})"
	end
end
