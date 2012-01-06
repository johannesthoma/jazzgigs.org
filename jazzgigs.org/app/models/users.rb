class Users < ActiveRecord::Base
	has_many :events
end
