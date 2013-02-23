class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :user
      t.integer :tweet_id
      t.string :content

      t.timestamps
    end
  end
end
