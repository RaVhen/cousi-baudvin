class Article < ActiveRecord::Base
	has_many :comments

	validate :test_method

	def test_method
		if titre.empty?
			errors.add(:titre, "Can't be blank - Il a cousi, il a tout compris")
		end 
	end

end