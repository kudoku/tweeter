class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = current_user.tweets.build(tweet_params)
    if @tweet.save
      redirect_to root_url
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def tweet_params
      params.require(:tweet).permit(:body)
    end

    def set_tweet

    end
end
