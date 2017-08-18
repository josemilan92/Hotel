class AddToSendPro < ActiveRecord::Migration[5.1]
  def change
    add_column :sendpros, :status, :integer
    #add_column :sendpros, :photo, :string
  end
end
