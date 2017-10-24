class AddFontToPosts < ActiveRecord::Migration[5.1]
  def change
    add_reference :posts, :font, foreign_key: true
  end
end
