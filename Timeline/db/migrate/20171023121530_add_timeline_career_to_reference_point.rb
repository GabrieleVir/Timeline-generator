class AddTimelineCareerToReferencePoint < ActiveRecord::Migration[5.1]
  def change
    add_reference :reference_points, :timeline_career, foreign_key: true
  end
end
