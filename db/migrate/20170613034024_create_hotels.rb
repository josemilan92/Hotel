class CreateHotels < ActiveRecord::Migration[5.1]
  def change
    create_table :hotels do |t|
      t.string :nombre
      t.string :photo
      t.string :descripcion
      t.string :price
      t.string :servicio

      t.timestamps
    end
  end
end
