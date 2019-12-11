class CreateFriends < ActiveRecord::Migration[5.2]
  def change
    create_table :friends do |t|
      t.references :user_id

      t.timestamps
    end
  end
end
