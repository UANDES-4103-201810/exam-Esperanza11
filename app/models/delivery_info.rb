class DeliveryInfo < ApplicationRecord
  belongs_to :order
  belongs_to :user
  validates :phone, numericality: { only_integer:true }, length: { minimum: 9 }, presence: true
  validates :address1, presence: true
  validates :address2, presence: true
end
