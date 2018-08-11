class Addrelations < ActiveRecord::Migration[5.2]
  def change
    add_reference :userbooks, :user
  end
end
