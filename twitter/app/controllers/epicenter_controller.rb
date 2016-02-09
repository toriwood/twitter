class EpicenterController < ApplicationController
  def feed
  	@following_tweets = []
		@tweets = Tweet.all

    @tweets.each do |tweet|
      if current_user.following.include?(tweet.user_id)
        @following_tweets << tweet
      end
    end

    @vanity_count = 0
    @users = User.all

    @users.each do |user|
      if user.following.include?(current_user.id)
        @vanity_count += 1
      end
    end

    # old way of writing
		# @tweets.each do |tweet|
		# 	current_user.following.each do |id|
		# 		if tweet.user_id == id
		# 			@following_tweets << tweet
		# 		end
		# 	end
		# end
  end

  def show_user
  	#Storing the user whose page we are 
  	#currently looking at, not the signed 
  	#in user
  	@user = User.find(params[:id])
  end

  def now_following
    @user = User.find(params[:id])
    current_user.following.push(@user.id)
    current_user.save
    redirect_to show_user_path(id: @user.id)
  end

  def unfollow
    @user = User.find(params[:id])
    current_user.following.delete(@user.id)
    current_user.save
    redirect_to show_user_path(id: @user.id)
  end

  def following
  end

  private

end
