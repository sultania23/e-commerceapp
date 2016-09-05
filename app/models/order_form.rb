class OrderForm
	include ActiveModel::Model

	attr_accessor :user, :order

	def save
		false
	end
end