class ChangeColumn < ActiveRecord::Migration
  def change
  	  	change_column :products, :price, :float 'float USING CAST(:price AS float)'
  end
end
