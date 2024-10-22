class CreatePositions < ActiveRecord::Migration[7.2]
  def change
    create_table :positions do |t|
      t.integer :cart_id
      t.integer :item_id
      t.integer :quantity
      t.timestamps
    end
  end
end
