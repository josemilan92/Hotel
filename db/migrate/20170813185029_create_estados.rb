class CreateEstados < ActiveRecord::Migration[5.1]
  def change
    create_table :estados do |t|
      t.integer :estados
      t.string :nombre

      t.timestamps
    end
  end
end
