class CreateAllergies < ActiveRecord::Migration
  def change
    create_table :allergies do |t|
      t.integer :background_id
      t.string :allergy_name

      t.timestamps null: false
    end
  end
end
