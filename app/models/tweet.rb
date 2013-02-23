class Tweet < ActiveRecord::Base
  attr_accessible :content, :tweet_id, :user
end
