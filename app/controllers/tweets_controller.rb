class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def create
    begin
      t = Twitter.status(params[:tweet][:tweet_id]).attrs
      @tweet = Tweet.new
      @tweet.user = t[:user][:name]
      @tweet.tweet_id = t[:id]
      @tweet.content = t[:text]
      # @image = t[:profile_image_url]
      respond_to do |format|
        if @tweet.save
          format.html { redirect_to @tweet, notice: 'Tweet was successfully created.' }
        else
          format.html { render action: "new" }
        end
      end
    rescue => e
      @error = "Sorry that tweet doesn't exist. Try again?"
      render :action => 'new'
    end
  end
end
