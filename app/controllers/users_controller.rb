class UsersController < ApplicationController

  def home
    @tweets = Tweet.all

  end


end
