class AddHotelToSendPro < ActiveRecord::Migration[5.1]
  def change
    add_column :sendpros, :promotion_id, :integer
  end
  end