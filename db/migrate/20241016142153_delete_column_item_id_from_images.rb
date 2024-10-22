class DeleteColumnItemIdFromImages < ActiveRecord::Migration[7.2]
  remove_column :images, :item_id
end
