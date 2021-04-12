class ChangeDescriptionToExplanation < ActiveRecord::Migration[6.1]
  def change
    rename_column :pictures, :description, :explanation
  end
end
