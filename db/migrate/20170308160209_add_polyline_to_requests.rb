class AddPolylineToRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :polyline, :text
  end
end
