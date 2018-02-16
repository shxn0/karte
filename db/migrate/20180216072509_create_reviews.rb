class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :background, index: true, foreign_key: true
      t.integer :item, default: 0, null: false, limit: 1
      t.boolean :checked, default: false, null: false



      t.timestamps null: false
    end
  end
end
