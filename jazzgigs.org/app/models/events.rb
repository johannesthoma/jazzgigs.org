class Events < ActiveRecord::Base
	belongs_to :user
	belongs_to :band
	belongs_to :type
	belongs_to :style
	belongs_to :location
end
