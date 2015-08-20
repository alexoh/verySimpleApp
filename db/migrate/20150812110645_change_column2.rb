class ChangeColumn2 < ActiveRecord::Migration
  def change
  	change_column :products, :price, :integer, 'integer USING CAST("price" AS integer)'
  end
end
