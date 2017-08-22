class Addtocomidas < ActiveRecord::Migration[5.1]
  def change
    add_column :comidas, :status, :string
  end
end
