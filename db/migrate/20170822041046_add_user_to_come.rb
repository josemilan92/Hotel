class AddUserToCome < ActiveRecord::Migration[5.1]
  def change
    add_column :comidas, :user_id, :string
  end
end
