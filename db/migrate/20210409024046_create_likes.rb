class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.integer :picture_id
      t.integer :count

      t.timestamps
    end
  end
end
