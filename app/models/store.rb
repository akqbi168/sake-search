class Store < ApplicationRecord

  has_and_belongs_to_many :items

  # バリデーション
    # validates :name, presence: true

  # 画像アップロード用
    mount_uploader :image, ImageUploader

end
