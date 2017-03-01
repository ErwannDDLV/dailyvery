class ChangeAddressTypeInRequests < ActiveRecord::Migration[5.0]
  def change
    change_column :requests, :departure, 'integer USING CAST(departure AS integer)'
    add_foreign_key :requests, :locations, column: :departure
    change_column :requests, :arrival, 'integer USING CAST(arrival AS integer)'
    add_foreign_key :requests, :locations, column: :arrival
  end
end
