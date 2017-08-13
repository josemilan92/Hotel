class AddFechaSendsPro < ActiveRecord::Migration[5.1]
  def change
    add_column :sendpros, :fechaPri, :date, default: '2017-08-07 06:09:10.373872'
    add_column :sendpros, :fechaUlt, :date, default: '2017-08-07 06:09:10.373872'
  end
end
