class AddColumnsToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :completed_at, :datetime
  end
end
