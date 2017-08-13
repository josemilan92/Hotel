class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :hotel_id
      t.text :body
      t.text :user_id
      t.text :texto

      t.timestamps
    end
    add_index :comments, :hotel_id
  end
end
