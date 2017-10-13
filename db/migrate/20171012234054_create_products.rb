class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :detail
      t.integer :price
      t.integer :stock
      t.string :photo

      t.timestamps
    end
  end
end
