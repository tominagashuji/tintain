class Property < ApplicationRecord
  has_many :nearest_stations, inverse_of: :property
  accepts_nested_attributes_for :nearest_stations, allow_destroy: true, reject_if: :all_blank

  validates :name,  presence: true, length: { maximum: 50 }
  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :address,  presence: true, length: { maximum: 100 }
  validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
