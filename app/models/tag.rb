class Tag < ApplicationRecord

  has_and_belongs_to_many :items

  # バリデーション
  validates :tag_name, presence: true

end
