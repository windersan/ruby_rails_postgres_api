class AddProductNumberToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :product_number, :string
  end
end
