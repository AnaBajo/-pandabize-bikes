class Limitation < ApplicationRecord
  belongs_to :customization_option
  belongs_to :customization_category
end
