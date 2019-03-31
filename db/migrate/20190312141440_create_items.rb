class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.string :image
      t.string :name, null: false
      t.float :sake_parameter     # 日本酒度
      t.float :acid_parameter     # 酸度
      t.integer :category_id      # 辛口/甘口など
      t.integer :made_in_id       # 産地
      t.text :introduction

      t.timestamps
    end
  end
end
