class ChangeColumn2 < ActiveRecord::Migration
  def change
  	change_column :products, :price, :integer, :default => nil
  end
end
