class AddFontToTimelineCareers < ActiveRecord::Migration[5.1]
  def change
    add_reference :timeline_careers, :font, foreign_key: true
  end
end
