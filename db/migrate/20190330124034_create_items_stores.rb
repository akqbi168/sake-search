class CreateItemsStores < ActiveRecord::Migration[5.2]
  def change
    create_table :items_stores, id: false do |t|
      t.references :item, index: true
      t.references :store, index: true
    end
  end
end
