class ChangeColumn2 < ActiveRecord::Migration
  def change
  	remove_column :products, :price
  end
end
