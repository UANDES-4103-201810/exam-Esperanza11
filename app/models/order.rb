class Order < ApplicationRecord
  belongs_to :user
  has_many :order_pizzas
  has_many :pizzas, through: :order_pizzas
  has_many :delivery_infos
  validates :name, presence: true
  validates :name, presence: true
  validates :name, presence: true
end
