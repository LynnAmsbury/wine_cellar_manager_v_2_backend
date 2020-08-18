class CreateVarietyListItems < ActiveRecord::Migration[6.0]
  def change
    create_table :variety_list_items do |t|
      t.references :wine_index_list_item, null: false, foreign_key: true
      t.string :variety, null: false
      t.string :region, null: false
      t.string :producer, null: false
      t.integer :vintage, null: false
      t.integer :number_in_collection, null: false

      t.timestamps
    end
  end
end
