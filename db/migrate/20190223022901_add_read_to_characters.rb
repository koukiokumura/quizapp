class AddReadToCharacters < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :read, :string
  end
end
