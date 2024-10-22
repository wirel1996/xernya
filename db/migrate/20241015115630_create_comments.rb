class CreateComments < ActiveRecord::Migration[7.2]
  def change
    create_table :comments do |t|
      t.string  :body
      t.integer :user_id
      t.integer :commentable_id
      t.string :commentable_type
      t.timestamps
    end
  end
end
