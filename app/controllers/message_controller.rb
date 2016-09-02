require 'pry'

class MessageController < ApplicationController

	def index
		@post = Post.new #for the form

		@posts = time_dif(Post.all)
		binding.pry
	end

	def create
		binding.pry
		post = Post.new(post_params)
		post.save
		redirect_to root_path
	end

  	def post_params
      params.require(:post).permit(:name, :message, :dif)
    end
end
