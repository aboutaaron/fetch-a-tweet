class AddIndexToTweetId < ActiveRecord::Migration
  def change
    add_index :tweets, :tweet_id
  end
end
