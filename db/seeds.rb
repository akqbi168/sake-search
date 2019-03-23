# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tag.create!(name: "甘め")
Tag.create!(name: "甘口")
Tag.create!(name: "辛め")
Tag.create!(name: "辛口")
Tag.create!(name: "冷酒オススメ")
Tag.create!(name: "フルーティー")

Item.create!(
  image: "nanbu-bijin-tokujun.png",
  name: "南部美人",
  sake_parameter: 4.0,
  acid_parameter: 1.5,
  category_id: "3: 特別純米酒",
  tag: "甘口",
  made_in_id: "03: 岩手県",
  introduction: "フレッシュで飲みごたえのある味わいです。南部美人を飲んだことのある方もない方も、昨年の生酒を飲んだ方も「今年の」特別純米を飲み比べてみてください。"
)


Store.create!(
  image: "スクリーンショット_2019-03-11_18.19.36.png",
  name: "検閲",
  introduction: "店舗紹介です。",
  address: "中央区銀座",
  link: "http://www.aaa.com",
)
