class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string      :character,null: false
      t.references  :user,foreign_key: true,null: false
      t.integer     :level,null: false
      t.timestamps
    end
  end
end
