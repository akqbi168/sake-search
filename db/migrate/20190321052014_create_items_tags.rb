class CreateItemsTags < ActiveRecord::Migration[5.2]
  def change
    create_table :items_tags, id: false do |t|
      t.references :item, null: false
      t.references :tag, null: false
    end
  end
end
