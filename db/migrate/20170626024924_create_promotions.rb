class CreatePromotions < ActiveRecord::Migration[5.1]
  def change
    create_table :promotions do |t|
      t.string :name
      t.string :photo
      t.string :price
      t.text :description

      t.timestamps
    end
  end
end
