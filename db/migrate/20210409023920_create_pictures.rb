class CreatePictures < ActiveRecord::Migration[6.1]
  def change
    create_table :pictures do |t|
      t.text :title
      t.text :url
      t.text :description
      t.date :date

      t.timestamps
    end
  end
end
