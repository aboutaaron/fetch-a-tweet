class AddIndexToTweetId < ActiveRecord::Migration
  def change
    add_index :tweet_id
  end
end
