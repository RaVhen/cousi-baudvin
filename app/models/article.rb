class Article < ActiveRecord::Base
	has_many :comments
	has_and_belongs_to_many :authors

	validate :test_method

	def test_method
		if titre.empty?
			errors.add(:titre, "Can't be blank - Il a cousi, il a tout compris")
		end 
	end

end