# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Item を作る
items = Item.create!([{
  image: File.open("./public/images/nanbu-bijin-tokujun.png"),
  name: "南部美人",
  sake_parameter: 4.0,
  acid_parameter: 1.5,
  category_id: 3, # 特別純米酒
  made_in_id: 3, #岩手県
  introduction: "フレッシュで飲みごたえのある味わいです。南部美人を飲んだことのある方もない方も、昨年の生酒を飲んだ方も「今年の」特別純米を飲み比べてみてください。"
}, 
{
  image: File.open("./public/images/dassai39.png"),
  name: "獺祭 磨き三割九分",
  sake_parameter: "不明",
  acid_parameter: "不明",
  category_id: 1, # 純米大吟醸
  made_in_id: 35, # 山口県
  introduction: "華やかな上立ち香と口に含んだときに見せる蜂蜜のようなきれいな甘み。飲み込んだ後の長い余韻。これぞ純米大吟醸。"
}, 
{
  image: File.open("./public/images/denshu_tokujun.jpg"),
  name: "田酒",
  sake_parameter: "0.0",
  acid_parameter: "1.5",
  category_id: 3, # 特別純米酒
  made_in_id: 2, # 青森県
  introduction: "米の旨みが生きた飲み飽きしないスッキリした味わい、非常に人気のある銘酒です。"
}, 
{
  image: File.open("./public/images/tenzan2.jpg"),
  name: "天山 純米吟醸",
  sake_parameter: "1.0",
  acid_parameter: "1.4",
  category_id: 3, # 特別純米酒
  made_in_id: 41, # 佐賀県
  introduction: "地元佐賀の天山酒米栽培研究会の生産者の契約栽培「山田錦」を55％まで磨き上げ、蛍の名水天山山系の伏流水で仕込みました。
口に含むと爽やかな香りとお米の旨みがバランスよく広がります。"
}])

# Tag を作成しつつ、Item と Tag の中間テーブルを埋める
tag = Tag.new(tag_name: "甘め")
tag.items = [items[0], items[2]]
tag.save

tag = Tag.new(tag_name: "甘口")
# tag.items = [items[1]]
tag.save

tag = Tag.new(tag_name: "辛め")
tag.items = [items[3]]
tag.save

Tag.create!(tag_name: "辛口")

tag = Tag.new(tag_name: "冷酒で")
tag.items = [items[0], items[1]]
tag.save

tag = Tag.new(tag_name: "常温で")
tag.items = [items[0]]
tag.save

Tag.create!(tag_name: "温めて")

tag = Tag.new(tag_name: "男性向け")
tag.items = [items[0], items[3]]
tag.save

tag = Tag.new(tag_name: "女性向け")
tag.items = [items[0], items[2]]
tag.save

Tag.create!(tag_name: "爽快感")
Tag.create!(tag_name: "夏にピッタリ")

tag = Tag.new(tag_name: "フルーティー")
tag.items = [items[0], items[3]]
tag.save


# Store を作る
store = Store.new(
  image: File.open("./public/images/kengyo.png"),
  store_name: "銀座酒蔵検校",
  introduction: "昔ながらの「角打ち」が楽しめる、銀座の和酒専門店「銀座酒蔵検校」。
    普段店頭に並ばない希少酒、伝統を守り続ける良質な日本酒や焼酎、日本のワインを取り揃えております。
    店内中央にある白木のテーブルにて、様々な和酒を飲みながら、ゆったりとした時間をお過ごしください。",
  address: "東京都中央区銀座3-8-12 銀座ヤマトビル1階",
  link: "http://www.kengyo.co.jp"
)
store.items = [items[0], items[1]]
store.save

store = Store.new(
  image: File.open("./public/images/sakestand.jpg"),
  store_name: "SAKESTAND shibuya dogenzakaue",
  introduction: "日本酒をもっと気軽に、もっと楽しく。
    そんな想いからSAKESTANDというブランドを創りました。
    ノーチャージ、キャッシュオンスタイル。
    お気軽にご利用ください。",
  address: "東京都渋谷区道玄坂1-19-8 2F",
  link: "http://sakestand.com/"
)
store.items = [items[1], items[2]]
store.save

store = Store.new(
  image: File.open("./public/images/kurand2.png"),
  store_name: "KURAND SAKE MARKET 渋谷店",
  introduction: "KURAND SAKE MARKET渋谷店は、
日本酒100種類飲み比べし放題、時間無制限、持ち込み自由
が特長の日本酒専門店です。",
  address: "東京都渋谷区道玄坂2-9-10　松本ビル3階",
  link: "https://kurand.jp/sakemarket/shibuya/"
)
store.items = [items[0], items[1], items[2], items[3]]
store.save

store = Store.new(
  image: File.open("./public/images/kimijimaya.png"),
  store_name: "銀座 君嶋屋",
  introduction: "必ずいいお酒に出会える場所
私たちにとって何より大切なのが、お客様との会話です。 
飲むシーンからご予算やお好み、産地や蔵元の状況など、
ぜひ、スタッフまでお気軽にお声をがけください。
1×1 が 10 倍にも 100 倍にもなるお酒と料理のマリアージュをご提案いたします。",
  address: "東京都中央区銀座1丁目2-1　紺屋ビル1F",
  link: "https://kimijimaya.co.jp/"
)
store.items = [items[0], items[1], items[2]]
store.save

store = Store.new(
  image: File.open("./public/images/ana.jpg"),
  store_name: "ANA Fine Dining & Bar",
  introduction: "「THE CONNOISSEURS(ザ・コノシュアーズ)」による、美味の共演。

Connoisseur（コノシュアー）とは、「その道を極めた目利き」をあらわすことばです。
常に新たな食の世界を切り開き、お酒などの嗜好品を芸術のごとく高める世界の匠たちと、
高度1万メートルの特別な一皿を知るANAシェフチームとの共演が実現しました。

ANAだから出会うことができた食文化の粋を、ぜひご堪能ください。",
  address: "全日空 ビジネスクラス機内",
  link: "https://www.ana.co.jp/ja/jp/serviceinfo/international/inflight/guide/c/meal/"
)
store.items = [items[3]]
store.save