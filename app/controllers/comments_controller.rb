class CommentsController < ApplicationController
	def create
		@comment = current_user.comments.create(comment_params)
		redirect_to article_path(@comment.article)
	end

	private

	def comment_params
		params.require(:comment).permit(:body, :user_id, :article_id, :opinion_id)
	end
end
