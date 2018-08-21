class Property < ApplicationRecord
  INDICATE_MAXIMUM = 20 # 物件一覧の表示の際に表示できる物件情報の最大数。ページネーションは要件にないのでここでは未実装

  has_many :nearest_stations, inverse_of: :property, dependent: :destroy
  accepts_nested_attributes_for :nearest_stations, allow_destroy: true, reject_if: :all_blank

  validates :name,  presence: true, length: { maximum: 50 }
  validates :rent, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :address,  presence: true, length: { maximum: 100 }
  validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
