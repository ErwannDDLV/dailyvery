class AddStatusToRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :status, :integer
    add_column :requests, :code, :string
  end
end
