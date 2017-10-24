class AddYearMonthOrderToPosts < ActiveRecord::Migration[5.1]
  def change
	  add_column :posts, :year_month_order, :int
  end
end
