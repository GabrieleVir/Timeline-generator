class AddBackgroundToReferencePoints < ActiveRecord::Migration[5.1]
  def change
    add_reference :reference_points, :background, foreign_key: true
  end
end
