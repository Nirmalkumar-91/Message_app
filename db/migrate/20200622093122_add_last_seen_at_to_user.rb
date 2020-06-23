class AddLastSeenAtToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :last_seen_at, :boolean
  end
end
