class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.string :departure
      t.string :arrival
      t.text :description
      t.integer :parcel
      t.references :customer, index: true, foreign_key: { to_table: :users }
      t.references :rider, index: true, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
