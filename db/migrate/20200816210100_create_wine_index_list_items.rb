class CreateWineIndexListItems < ActiveRecord::Migration[6.0]
  def change
    create_table :wine_index_list_items do |t|
      t.string :name, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
