class Post < ActiveRecord::Base
  attr_accessible :crime, :details, :title, :user_id, :city, :state, :latitude, :longitude, :image
   has_many :tips
   geocoded_by :address
   after_validation :geocode
   has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

	def address
	  [city, state].compact.join(', ')
	end
end
