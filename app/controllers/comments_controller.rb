class CommentsController < ApplicationController
	def create 
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create!(params[:comment])
		redirect_to do |format|
		   format.html { redirect_to @post }
		   format.js
	end
end
