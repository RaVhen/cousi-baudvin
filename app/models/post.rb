class Post < ActiveRecord::Base
	has_many :comments, :dependent => :destroy

	validates :title,  :presence => true,
                    :length => { :minimum => 5 }
  	validates :body, :presence => true
  	has_attached_file :avatar,:styles => { :medium => "300x300>", :thumb => "100x100>" }
	validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
