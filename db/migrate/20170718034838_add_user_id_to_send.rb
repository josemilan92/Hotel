class AddUserIdToSend < ActiveRecord::Migration[5.1]
  def change
    add_column :sends, :user_id, :integer
  end
end
