class CreateTimelineCareers < ActiveRecord::Migration[5.1]
  def change
    create_table :timeline_careers do |t|
      t.string :name

      t.timestamps
    end
  end
end
