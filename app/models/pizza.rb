class Pizza < ApplicationRecord
  has_one :crust
  has_one :recipe
  has_many :order_pizzas
  has_many :order, through: :order_pizzas
end
