class Comment < ActiveRecord::Base

	has_many :votes
	belongs_to :article
	belongs_to :opinion
	belongs_to :user



	def article_comment?
		article_id && !opinion_id
	end

	def opinion_comment?
		opinion_id && !article_id
	end
end
