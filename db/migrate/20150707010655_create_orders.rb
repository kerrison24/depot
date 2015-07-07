class CreateOrders < ActiveRecord::Migration
  def change
    drop_table :orders
    create_table :orders do |t|
      t.string :name
      t.text :address
      t.string :email
      t.string :pay_type

      t.timestamps null: false
    end
  end
end
