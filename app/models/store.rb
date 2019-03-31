class Store < ApplicationRecord

  has_and_belongs_to_many :items

  # バリデーション
    validates :store_name, presence: true
    validates :address, presence: true

  # 画像アップロード用
    mount_uploader :image, ImageUploader

end
