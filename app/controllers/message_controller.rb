require 'json'

class MessageController < ApplicationController

	def index
		@post = Post.new #for the form

		@posts = time_dif(Post.all)
	end

	def create
		post = Post.new(post_params)
		post.save
		redirect_to root_path
	end

  	def post_params
      params.require(:post).permit(:name, :message, :dif)
    end

    def api
    	posts = Post.all
    	api = Hash.new

    	posts.each_with_index do |post, index|
    		api[index] = { name: post[:name], message: post[:message]}
    	end

    	@api = api.to_json
    end	
end
