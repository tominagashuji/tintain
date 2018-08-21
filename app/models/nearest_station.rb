class NearestStation < ApplicationRecord
  FORM_COUNT = 2 # 物件登録時に出力する最寄り駅入力フォームの個数

  belongs_to :property, inverse_of: :nearest_stations

  validates :line,  presence: true, length: { maximum: 50 }
  validates :name,  presence: true, length: { maximum: 50 }
  validates :walking_minutes, numericality: { only_integer: true, greater_than: 0 }
end
