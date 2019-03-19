class Store < ApplicationRecord

  # バリデーション
    validates :name, presence: true

  # 画像アップロード用
    mount_uploader :image, ImageUploader


end
