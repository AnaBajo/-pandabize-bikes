class Bike < ApplicationRecord
  has_many :customization_categories
  # has_many :customization_options, through: :customization_categories
  has_many :orders


  validates :name, presence: true
  accepts_nested_attributes_for :customization_categories, reject_if: lambda { |attributes| attributes['bike_element'].blank? }

end
