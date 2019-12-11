class CreateItemKeys < ActiveRecord::Migration[5.2]
  def change
    create_table :item_keys do |t|
      t.string :name

      t.timestamps
    end
  end
end
