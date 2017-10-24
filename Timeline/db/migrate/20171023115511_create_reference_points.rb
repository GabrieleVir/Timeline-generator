class CreateReferencePoints < ActiveRecord::Migration[5.1]
  def change
    create_table :reference_points do |t|
      t.integer :year

      t.timestamps
    end
  end
end
