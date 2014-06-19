class Vote < ActiveRecord::Base
	belongs_to :user
	belongs_to :article
	belongs_to :comment
	belongs_to :opinion
end
