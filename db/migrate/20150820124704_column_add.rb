class ColumnAdd < ActiveRecord::Migration
  def change
  	add_column :product, :price, :integer
  end
end
