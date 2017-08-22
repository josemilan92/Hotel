class CreateOrdenComidas < ActiveRecord::Migration[5.1]
  def change
    create_table :orden_comidas do |t|
      t.string :product
      t.string :total

      t.timestamps
    end
  end
end
