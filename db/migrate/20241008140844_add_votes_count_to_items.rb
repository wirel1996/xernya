class AddVotesCountToItems < ActiveRecord::Migration[7.2]
  def change
    add_column :items, :votes_count, :integer, default: 0
  end
end
