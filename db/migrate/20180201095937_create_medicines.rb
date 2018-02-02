class CreateMedicines < ActiveRecord::Migration
  def change
    create_table :medicines do |t|
      t.integer :background_id
      t.string :medicine_name

      t.timestamps null: false
    end
  end
end
