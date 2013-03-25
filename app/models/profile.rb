class Profile < ActiveRecord::Base	
	has_many :friendships
	has_many :friends, :through => :friendships	
	
	def self.search(search, role)
	  if search
		find(:all, :conditions => ['sex LIKE ? AND seeks LIKE ?', "%#{search}%", "%#{role}%"])
	  else
		find(:all)
	  end	 
	end	
end