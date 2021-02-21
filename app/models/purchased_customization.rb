class PurchasedCustomization < ApplicationRecord
  belongs_to :bike
  belongs_to :customization_option
  # belongs_to :customization_category, through: :customization_option
end
