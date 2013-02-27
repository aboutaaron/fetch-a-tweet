class Tweet < ActiveRecord::Base
  attr_accessible :content, :tweet_id, :user

  validates :tweet_id, :presence => true
  validates :tweet_id, :uniqueness => true
  validates :tweet_id, :numericality => { :only_integer => true }
end
