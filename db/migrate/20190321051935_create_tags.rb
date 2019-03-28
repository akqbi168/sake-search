class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.string :name
      # t.integer :item

      t.timestamps
    end
  end
end
