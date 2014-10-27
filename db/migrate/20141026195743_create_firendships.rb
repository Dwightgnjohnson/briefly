class CreateFirendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.integer :user_id
      t.integer :friend_id
      t.datetime :followed_at
      t.datetime :unfollowed_at

      t.timestamps
    end
  end
end
