class AddFechasToSendPro < ActiveRecord::Migration[5.1]
  def change
    add_column :sendpros, :start_time, :datetime
    add_column :sendpros, :end_time, :datetime
  end
end
