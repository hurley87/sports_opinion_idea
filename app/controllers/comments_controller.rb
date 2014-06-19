class CommentsController < ApplicationController
	def create
		@comment = current_user.comments.create(comment_params)
		if @comment.article_id?
			redirect_to article_path(@comment.article_id)
		else
			redirect_to opinion_path(@comment.opinion_id)
		end
	end

	private

	def comment_params
		params.require(:comment).permit(:body, :user_id, :article_id, :opinion_id)
	end
end
