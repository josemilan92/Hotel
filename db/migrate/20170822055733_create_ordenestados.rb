class CreateOrdenestados < ActiveRecord::Migration[5.1]
  def change
    create_table :ordenestados do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
