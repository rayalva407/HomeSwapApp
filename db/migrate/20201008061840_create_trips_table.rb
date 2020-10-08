class CreateTripsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.integer :user_id
      t.integer :home_id
      t.datetime :start_date
      t.datetime :end_date
    end
  end
end
