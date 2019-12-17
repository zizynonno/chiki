class CreateItemValues < ActiveRecord::Migration[5.2]
  def change
    create_table :item_values do |t|
      t.references :friend
      t.references :item_key
      t.text :name

      t.timestamps
    end
  end
end
