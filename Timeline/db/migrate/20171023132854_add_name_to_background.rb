class AddNameToBackground < ActiveRecord::Migration[5.1]
  def change
	  add_column :backgrounds, :name, :string
  end
end
