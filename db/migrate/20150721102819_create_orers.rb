class CreateOrers < ActiveRecord::Migration
  def change
    create_table :orers do |t|
      t.string :user_id
      t.integer :product_id
      t.float :total
    end
    add_index :orers, :user_id
    add_index :orers, :product_id
  end
end
