class RenameDepartureInRequests < ActiveRecord::Migration[5.0]
  def change
      rename_column :requests, :departure, :departure_id
      rename_column :requests, :arrival, :arrival_id
  end
end
