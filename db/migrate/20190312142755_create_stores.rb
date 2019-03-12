class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.text :image_id
      t.string :name
      t.text :introduction
      t.string :address
      t.string :link

      t.timestamps
    end
  end
end
