class AddRowOrderToThings < ActiveRecord::Migration
  def change
    add_column :movies, :row_order, :integer
  end
end
