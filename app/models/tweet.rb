class Tweet < ActiveRecord::Base
  attr_accessible :content, :tweet_id, :user

  validates :tweet_id, :user, :content, :presence => true
  validates :tweet_id, :uniqueness => true
  validates :tweet_id, :length  => { :is => 18 }
  validates :tweet_id, :numericality => { :only_integer => true }
end
