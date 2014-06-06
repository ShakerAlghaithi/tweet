class TweeetsController < ApplicationController

	before_action :load_tweet, only:   [:show, :edit, :delete]

	def index
      @tweets = Tweeet.all.paginate(:page => params[:page], :per_page => 2)
	end

	def new
		@tweet = Tweeet.new 
	end

	def show
		
	end

	def edit
		
	end

	def create 
		@tweet = Tweeet.create(tweet_params)
		redirect_to tweeet_path(@tweet)

	end
	def delete
		@tweet.destroy
		redirect_to tweeets_path 

	end

	private 
	def load_tweet
		@tweet = Tweeet.find(params[:id])
	end
	def tweet_params
		params.require(:tweeet).permit(:title, :text)
		
	end
end
