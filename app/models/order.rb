class Order < ApplicationRecord
  belongs_to :bike
  belongs_to :user
  has_many :purchased_customizations
end
