class CreateSendpros < ActiveRecord::Migration[5.1]
  def change
    create_table :sendpros do |t|
      t.string :lugar
      t.integer :total
      t.integer :user_id

      t.timestamps
    end
  end
end
