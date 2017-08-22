class AddToOrderCantidad < ActiveRecord::Migration[5.1]
  def change
    add_column :comidas, :cantidad, :string
  end
end
