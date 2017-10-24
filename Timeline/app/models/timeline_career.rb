class TimelineCareer < ApplicationRecord

	belongs_to :background
	belongs_to :font
	has_many :reference_points, :dependent => :destroy



end
