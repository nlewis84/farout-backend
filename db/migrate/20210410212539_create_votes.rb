class CreateVotes < ActiveRecord::Migration[6.1]
  def change
    create_table :votes do |t|
      t.integer :picture_id
      t.integer :count

      t.timestamps
    end
  end
end
