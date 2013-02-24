class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def new
    @tweet = Tweet.new
  end

  def show
    @tweet = Tweet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  def create
    @tweet = Tweet.new
    @tweet.user = Twitter.status(params[:tweet][:tweet_id]).from_user
    @tweet.tweet_id = params[:tweet][:tweet_id]
    @tweet.content = Twitter.status(params[:tweet][:tweet_id]).text

    respond_to do |format|
      if @tweet.save
        format.html { redirect_to @tweet, notice: 'Tweet was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end
end
