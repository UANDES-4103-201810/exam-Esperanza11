class Order < ApplicationRecord
  belongs_to :user
  has_many :order_pizzas
  has_many :pizzas, through: :order_pizzas
  has_many :delivery_infos
  validates :payment_method, presence: true
  validates :user, presence: true
  validates :name, presence: true
  validates_associated :pizzas
end
