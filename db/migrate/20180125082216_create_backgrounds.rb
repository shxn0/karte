class CreateBackgrounds < ActiveRecord::Migration
  def change
    create_table :backgrounds do |t|
      t.string :name
      t.integer :age
      t.string :sex
      t.string :country
      t.string :occupation
      t.string :religion
      t.string :living_will
      t.string :profile_url
      t.string :notes
      t.timestamps null: false
    end
  end
end
