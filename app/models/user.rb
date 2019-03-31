class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # enum for generation
    enum generation_id: {
      '〜19歳':1,
      '20〜24歳':2,
      '25〜29歳':3,
      '30〜34歳':4,
      '35〜39歳':5,
      '40〜44歳':6,
      '45〜49歳':7,
      '50〜54歳':8,
      '55〜59歳':9,
      '60歳以上〜':10
    }

  # enum for gender
    enum gender_id: {
      '男性':1,
      '女性':2,
      '無回答':3
    }

end
