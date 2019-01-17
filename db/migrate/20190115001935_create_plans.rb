class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.string :plan_name
      t.integer :plan_price
      t.string :plan_status
      t.string :plan_periodo

      t.timestamps
    end
  end
end
