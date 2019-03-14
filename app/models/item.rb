class Item < ApplicationRecord






    def self.search(search)
     if search
        album_result = Cd.where("album LIKE ? ", "%#{search}%")
        anime_result = Cd.joins(:anime).where("anime_title LIKE ?", "%#{search}%")
        song_result = Cd.joins(discs: :songs).where("title LIKE ?", "%#{search}%")
        result = album_result | anime_result | song_result
        #和集合
        return result
     end
    end
end
