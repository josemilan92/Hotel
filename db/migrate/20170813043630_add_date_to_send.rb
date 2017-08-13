class AddDateToSend < ActiveRecord::Migration[5.1]
  def change
    add_column :sends, :start_time, :datetime
    add_column :sends, :end_time, :datetime
  end
end
