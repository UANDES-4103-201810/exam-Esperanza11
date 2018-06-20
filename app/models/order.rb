class Order < ApplicationRecord
  has_many :order_pizzas
  has_many :pizzas, through: :order_pizzas
  has_many :delivery_infos
  belongs_to :user
  validates :payment_method, presence: true
  validates_associated :pizzas
end
