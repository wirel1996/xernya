class CreateCartsItems < ActiveRecord::Migration[7.2]
  def change
    create_table :carts_items, id: false do |t|
      t.integer :cart_id
      t.integer :item_id
    end
  end
end
