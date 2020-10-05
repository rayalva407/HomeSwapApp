class CreateSwapsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :swaps do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :location
    end
  end
end
