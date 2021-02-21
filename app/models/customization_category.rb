class CustomizationCategory < ApplicationRecord
  belongs_to :bike
  has_many :customization_options
  has_many :limitations

  validates :bike_element, presence: true, allow_blank: false

  accepts_nested_attributes_for :customization_options, reject_if: lambda { |attributes| attributes['option'].blank? }
end
