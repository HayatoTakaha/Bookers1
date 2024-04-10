class AddNameToLists < ActiveRecord::Migration[6.1]
  def change
    add_column :lists, :book, :string
  end
end
