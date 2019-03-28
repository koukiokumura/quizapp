class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.string      :question, null: false
      t.string      :image
      t.text        :text
      t.references  :user
      t.timestamps
    end
  end
end
