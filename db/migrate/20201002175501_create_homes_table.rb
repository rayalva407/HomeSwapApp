class CreateHomesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :homes do |t|
      t.string :address
      t.integer :user_id
    end
  end
end
