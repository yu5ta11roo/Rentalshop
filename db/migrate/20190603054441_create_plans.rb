class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.string :days
      t.integer :place

      t.timestamps
    end
  end
end
