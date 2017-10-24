class AddFontToReferencePoints < ActiveRecord::Migration[5.1]
  def change
    add_reference :reference_points, :font, foreign_key: true
  end
end
