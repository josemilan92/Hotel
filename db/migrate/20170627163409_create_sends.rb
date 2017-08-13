class CreateSends < ActiveRecord::Migration[5.1]
  def change
    create_table :sends do |t|
      t.string :lugar
      t.string :promocion

      t.timestamps
    end
  end
end
