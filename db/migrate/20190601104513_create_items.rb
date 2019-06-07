class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :title
      t.integer :category_id
      t.text :comment
      t.string :image

      t.timestamps
    end
  end
end
