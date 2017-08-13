class CreateComentarios < ActiveRecord::Migration[5.1]
  def change
    create_table :comentarios do |t|
      t.text :cuerpo
      t.integer :promotion_id

      t.timestamps
    end
  end
end
