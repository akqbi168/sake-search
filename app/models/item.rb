class Item < ApplicationRecord

  has_and_belongs_to_many :tags
  has_and_belongs_to_many :stores

  # バリデーション
    validates :name, presence: true
    validates :category_id, presence: true
    validates :made_in_id, presence: true

  # 画像アップロード用
    mount_uploader :image, ImageUploader

  # 検索機能
    # def self.search(search)
    #   return Item.all unless search
    #   Item.where(['name LIKE ?', "%#{search}%"])
    # end

    def self.search(search)
      if search
        item_result = Item.where("name LIKE ? ", "%#{search}%")
        tag_result = Item.joins(:tags).where("tag_name LIKE ?", "%#{search}%")
        store_result = Item.joins(:stores).where("store_name LIKE ?", "%#{search}%")
        # 和集合（いずれの結果も含める）
        result = item_result | tag_result | store_result
        return result
      end
    end


    # def self.search(search)
    #  if search
    #   album_result = Cd.where("album LIKE ? ", "%#{search}%")
    #   anime_result = Cd.joins(:anime).where("anime_title LIKE ?", "%#{search}%")
    #   song_result = Cd.joins(discs: :songs).where("title LIKE ?", "%#{search}%")
    #   result = album_result | anime_result | song_result
    #     #和集合
    #   return result
    #  end
    # end


  # enum for category
    enum category_id: {
      '1: 純米大吟醸':1,
      '2: 純米吟醸':2,
      '3: 特別純米酒':3,
      '4: 純米酒':4,
      '5: 大吟醸':5,
      '6: 吟醸':6,
      '7: 本醸造酒':7,
      '8: スパークリング':8,
      '9: 普通酒':9
    }

  # enum for made_in
    enum made_in_id: {
      '01: 北海道':1,  '02: 青森県':2,  '03: 岩手県':3,  '04: 宮城県':4,    '05: 秋田県':5,  '06: 山形県':6,    '07: 福島県':7,  '08: 茨城県':8,  '09: 栃木県':9,  '10: 群馬県':10,
      '11: 埼玉県':11, '12: 千葉県':12, '13: 東京都':13, '14: 神奈川県':14, '15: 新潟県':15, '16: 富山県':16,   '17: 石川県':17, '18: 福井県':18, '19: 山梨県':19, '20: 長野県':20,
      '21: 岐阜県':21, '22: 静岡県':22, '23: 愛知県':23, '24: 三重県':24,   '25: 滋賀県':25, '26: 京都府':26,   '27: 大阪府':27, '28: 兵庫県':28, '29: 奈良県':29, '30: 和歌山県':30,
      '31: 鳥取県':31, '32: 島根県':32, '33: 岡山県':33, '34: 広島県':34,   '35: 山口県':35, '36: 徳島県':36,   '37: 香川県':37, '38: 愛媛県':38, '39: 高知県':39, '40: 福岡県':40,
      '41: 佐賀県':41, '42: 長崎県':42, '43: 熊本県':43, '44: 大分県':44,   '45: 宮崎県':45, '46: 鹿児島県':46, '47: 沖縄県':47, '00: 海外':48
    }

end
