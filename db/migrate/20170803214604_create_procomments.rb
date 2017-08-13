class CreateProcomments < ActiveRecord::Migration[5.1]
  def change
    create_table :procomments do |t|
      t.integer :promo_id
      t.text :texto
      t.integer :user_id

      t.timestamps
    end
  end
end
