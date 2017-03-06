class AddPriceDistanceToRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :distance, :float
    add_column :requests, :price, :float
  end
end
