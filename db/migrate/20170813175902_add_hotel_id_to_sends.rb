class AddHotelIdToSends < ActiveRecord::Migration[5.1]
  def change
    add_column :sends, :hotel_id, :integer
  end
end
