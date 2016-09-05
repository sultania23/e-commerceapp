class OrderMailer < ApplicationMailer

	def order_confirmation
		mail to: order.user.email, subject: "your order id is (##{orderid})"
	end
end
