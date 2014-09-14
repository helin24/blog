class Post < ActiveRecord::Base
	belongs_to :user
	validates :content, length: {minimum: 1, maximum: 5000}
end
