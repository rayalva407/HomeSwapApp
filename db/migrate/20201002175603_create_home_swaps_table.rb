class CreateHomeSwapsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :home_swaps do |t|
      t.integer :home_id
      t.integer :swap_id
    end
  end
end
