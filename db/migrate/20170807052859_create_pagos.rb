class CreatePagos < ActiveRecord::Migration[5.1]
  def change
    create_table :pagos do |t|
      t.string :name

      t.timestamps
    end
  end
end
