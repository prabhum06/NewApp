class CreateGroceriesItems < ActiveRecord::Migration[5.2]
  def change
    create_table :groceries_items do |t|
      t.string :name
      t.integer :availability
      t.integer :price

      t.timestamps
    end
  end
end
