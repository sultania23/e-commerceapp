class OrderForm
	include ActiveModel::Model

	attr_accessor :user, :order

	def save
		if valid?
			persist
			true
		else
			false
	    end
	end

	def valid?
		user.valid?

	end
	def persist
		#user.save
	end

	def has_errors?
		user.errors.any?
	end
end