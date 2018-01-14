class Order < ApplicationRecord
  belongs_to :customer
  has_many :line_items
  has_many :pumpkins, through: :line_items
  # has_many(:pumpkins, {through: :line_items})

  def computeTotal
    total = 0
    line_items.each do |li|
      total = total + li.price
    end
    return total
  end
end
