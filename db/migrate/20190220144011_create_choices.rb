class CreateChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :choices do |t|
      t.string      :question, null: false
      t.string      :image
      t.boolean     :coorect, default: false, null: false
      t.references  :content, foreign_key: true, null: false
      t.timestamps
    end
  end
end
