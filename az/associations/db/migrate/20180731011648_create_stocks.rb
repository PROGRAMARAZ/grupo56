class CreateStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :stocks do |t|
      t.belongs_to :product
      t.belongs_to :store
      t.timestamps
    end
  end
end
