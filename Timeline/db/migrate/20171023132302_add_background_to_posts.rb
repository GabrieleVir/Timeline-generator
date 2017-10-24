class AddBackgroundToPosts < ActiveRecord::Migration[5.1]
  def change
    add_reference :posts, :background, foreign_key: true
  end
end
