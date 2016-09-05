class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items

  def total_price
  	order_items.inject(0) { |sum,item| sum + total_price}
  end

end
