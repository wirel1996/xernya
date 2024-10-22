class AddColumnTotalToOrder < ActiveRecord::Migration[7.2]
  def change
    add_column :orders, :total, :float
  end
end
