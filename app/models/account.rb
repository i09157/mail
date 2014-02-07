class Account < ActiveRecord::Base
    belongs_to :user
    belongs_to :hierarchy
    validates :kanjiname, :presence => true
	validates :kananame, :presence => true
	validates :mail_addr, :presence => true,
						  :format => { :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/ ,
                     	  :message => '不正な値です'}
	validates :user_id, :presence => true
	validates :hierarchy_id, :presence => true
end
