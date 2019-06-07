class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.integer :lend_id
      t.integer :item_id
      t.integer :plan_id
      t.integer :rate
      t.string :detail

      t.timestamps
    end
  end
end
