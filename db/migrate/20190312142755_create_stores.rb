class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
    # create_table :stores, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.text :image
      t.string :name
      t.text :introduction
      t.string :address
      t.string :link

      t.timestamps
    end
  end
end
