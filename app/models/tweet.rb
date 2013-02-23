class Tweet < ActiveRecord::Base
  attr_accessible :content, :tweet_id, :user

  validates :content, :tweet_id, :user, :presence => true
  validates :tweet_id, :uniqueness => true
  validates :tweet_id, :numericality => true
end
