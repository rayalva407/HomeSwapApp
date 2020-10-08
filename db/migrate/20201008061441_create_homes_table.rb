class CreateHomesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :homes_tables do |t|
      t.string :address
    end
  end
end
