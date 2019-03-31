class CreateItemsTags < ActiveRecord::Migration[5.2]
  def change
    create_table :items_tags, id: false, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.references :item, index: true
      t.references :tag, index: true
    end
  end
end
