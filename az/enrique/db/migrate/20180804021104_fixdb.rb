class Fixdb < ActiveRecord::Migration[5.2]
  def change
    remove_reference :userbooks, :userbooks

  end
end
