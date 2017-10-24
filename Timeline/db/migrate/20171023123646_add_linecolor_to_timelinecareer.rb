class AddLinecolorToTimelinecareer < ActiveRecord::Migration[5.1]
  def change
	  add_column :timeline_careers, :line_color, :string
  end
end
