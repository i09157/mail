class Hierarchy < ActiveRecord::Base
	has_many :accounts
	validates :p_id, :presence => true
	validates :gname, :presence => true
end
