class AddSizeToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :size, :string
  end
end
