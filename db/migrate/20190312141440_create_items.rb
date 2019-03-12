class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.text :image_id
      t.string :name
      t.text :introduction
      t.integer :sake_parameter     # 日本酒度
      t.integer :acid_parameter     # 酸度
      t.integer :category_id        # 辛口/甘口など
      t.integer :made_in_id         # 産地

      t.timestamps
    end
  end
end
