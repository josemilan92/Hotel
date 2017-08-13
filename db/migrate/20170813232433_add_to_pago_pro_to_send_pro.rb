class AddToPagoProToSendPro < ActiveRecord::Migration[5.1]
  def change
    add_column :sendpros, :pago, :string
  end
end
