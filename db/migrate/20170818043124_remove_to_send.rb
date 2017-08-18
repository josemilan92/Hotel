class RemoveToSend < ActiveRecord::Migration[5.1]
  def change
    remove_column :sends, :lugar
    remove_column :sends, :total
  end
end
