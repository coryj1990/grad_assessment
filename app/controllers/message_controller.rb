require 'pry'

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
end
