class CreateLends < ActiveRecord::Migration[5.2]
  def change
    create_table :lends do |t|
      t.integer :user_id
      t.date :date

      t.timestamps
    end
  end
end
