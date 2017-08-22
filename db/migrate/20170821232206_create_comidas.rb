class CreateComidas < ActiveRecord::Migration[5.1]
  def change
    create_table :comidas do |t|
      t.string :description
      t.string :total

      t.timestamps
    end
  end
end
