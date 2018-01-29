class AddUserIdToBackgrounds < ActiveRecord::Migration
  def change
    add_column :backgrounds, :user_id, :integer
  end
end
