class RenameQuestionColumnToChoices < ActiveRecord::Migration[5.2]
  def change
    rename_column :choices, :question, :text
  end
end
