# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Item を作る
items = Item.create!([{
  image: "nanbu-bijin-tokujun.png",
  name: "南部美人",
  sake_parameter: 4.0,
  acid_parameter: 1.5,
  category_id: "3: 特別純米酒",
  made_in_id: "03: 岩手県",
  introduction: "フレッシュで飲みごたえのある味わいです。南部美人を飲んだことのある方もない方も、昨年の生酒を飲んだ方も「今年の」特別純米を飲み比べてみてください。"
}, 
{
  image: "dassai23%.png",
  name: "獺祭 磨き三割九分",
  sake_parameter: "不明",
  acid_parameter: "不明",
  category_id: "1: 純米大吟醸",
  made_in_id: "35: 山口県",
  introduction: "華やかな上立ち香と口に含んだときに見せる蜂蜜のようなきれいな甘み。飲み込んだ後の長い余韻。これぞ純米大吟醸。"
}, 
{
  image: "denshu_tokujun.jpg",
  name: "田酒",
  sake_parameter: "0.0",
  acid_parameter: "1.5",
  category_id: "3: 特別純米酒",
  made_in_id: "02: 青森県",
  introduction: "米の旨みが生きた飲み飽きしないスッキリした味わい、非常に人気のある銘酒です。"
}])

# Tag を作成しつつ、Item と Tag の中間テーブルを埋める
tag = Tag.new(name: "甘め")
tag.items = [items[0], items[2]]
tag.save

tag = Tag.new(name: "甘口")
# tag.items = [items[1]]
tag.save

Tag.create!(name: "辛め")
Tag.create!(name: "辛口")

tag = Tag.new(name: "冷酒で")
tag.items = [items[0], items[1]]
tag.save

Tag.create!(name: "常温で")
Tag.create!(name: "温めて")

tag = Tag.new(name: "男性向け")
tag.items = [items[0]]
tag.save

tag = Tag.new(name: "女性向け")
tag.items = [items[0], items[2]]
tag.save

Tag.create!(name: "爽快感")
Tag.create!(name: "夏にピッタリ")


# Store を作る
Store.create!(
  image: "スクリーンショット_2019-03-11_18.19.36.png",
  name: "検閲",
  introduction: "店舗紹介です。",
  address: "中央区銀座",
  link: "http://www.aaa.com",
)
