class ChangeColumn2 < ActiveRecord::Migration
  def change
  	change_column :products, :price, :integer TYPE integer USING (:price::integer)
  end
end
