class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.text :image
      t.string :store_name, null: false
      t.text :introduction
      t.string :address
      t.string :link

      t.timestamps
    end
  end
end
