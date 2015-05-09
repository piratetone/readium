class Link < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	has_many :comments


	def score
  	self.get_upvotes.size - self.get_downvotes.size
	end
	
end
