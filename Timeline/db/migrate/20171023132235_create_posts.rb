class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.string :img_url
      t.string :link
      t.string :date
      t.string :title_color

      t.timestamps
    end
  end
end
