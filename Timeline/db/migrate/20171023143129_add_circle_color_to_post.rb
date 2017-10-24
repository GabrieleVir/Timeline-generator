class AddCircleColorToPost < ActiveRecord::Migration[5.1]
  def change
	  add_column :posts, :circle_color, :string
  end
end
