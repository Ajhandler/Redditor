class HomeController < ApplicationController
	def index
		
	end
	def info
		 @test = params[:reddit]
		 response = JSON.load(RestClient.get(reddit_params))
		@top = response['data']['children'].first['data']
		@test = params[:reddit]
	 end

	private

	def reddit_params
		sub = params[:reddit]
		return 'http://www.reddit.com/r/'+sub+"/top/.json" 
	end
	 

end