class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer     :rate,null: false
      t.references  :content, foreign_key: true, null: false
      t.timestamps
    end
  end
end
