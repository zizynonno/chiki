class CreateItemValues < ActiveRecord::Migration[5.2]
  def change
    create_table :item_values do |t|
      t.references :friend_id
      t.references :item_key_id
      t.text :name

      t.timestamps
    end
  end
end
