class RenameCoorectColumnToChoices < ActiveRecord::Migration[5.2]
  def change
    rename_column :choices, :coorect, :correct
  end
end
