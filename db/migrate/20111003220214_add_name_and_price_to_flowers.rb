class AddNameAndPriceToFlowers < ActiveRecord::Migration
  def change
    add_column :flowers, :name, :string
    add_column :flowers, :price, :integer
  end
end
