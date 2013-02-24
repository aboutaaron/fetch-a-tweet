class Tweet < ActiveRecord::Base
  attr_accessible :content, :tweet_id, :user

  validates :tweet_id, :presence => true
  validates :tweet_id, :uniqueness => true
  validates :tweet_id, :length  => { :is => 18 }
end
