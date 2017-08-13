class AddPagoToSend < ActiveRecord::Migration[5.1]
  def change
    add_column :sends, :pago, :string
  end
end
