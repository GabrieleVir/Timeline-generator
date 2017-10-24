class Post < ApplicationRecord

	belongs_to :reference_point
	belongs_to :background
	belongs_to :font
end
