class AddToSends < ActiveRecord::Migration[5.1]
  def change
    add_column :sends, :pago, :string
    add_column :sends, :total, :string
    add_column :sends, :status, :string
  end
end
