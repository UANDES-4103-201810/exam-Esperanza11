class User < ApplicationRecord
  has_many :orders
  has_many :delivery_infos
end
