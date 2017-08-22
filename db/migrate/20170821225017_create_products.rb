class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :photo
      t.integer :price
      t.string :category
      t.string :subcategory

      t.timestamps
    end
  end
end
