class Contact < ActiveRecord::Base
	validates :to, :presence => true
	validates :subject, :presence => true
	validates :body, :presence => true
	belongs_to :user
end
