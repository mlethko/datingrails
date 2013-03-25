module Nicetime
	def self.display
		time = Time.now
		return time.strftime(" at %H:%M %a %d-%B-%Y")
	end
end