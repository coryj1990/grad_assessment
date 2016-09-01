class MessageController < ApplicationController

	def index
		@post = Post.new
	end
end
