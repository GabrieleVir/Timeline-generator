class ReferencePoint < ApplicationRecord

	belongs_to :timeline_career
	belongs_to :background
	belongs_to :font
	has_many :posts, :dependent => :destroy

	def display_name
		"Point de référence: #{self.year} Timeline: #{self.timeline_career.name}"   
	end

end
