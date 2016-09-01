require 'pry'

class MessageController < ApplicationController

	def index
		@post = Post.new #for the form
		binding.pry
		posts = Post.all #for showing posts
		now = Time.now
		posts.each do |post|
			post[:dif] = now - post.created_at
		end

		@posts = posts

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
