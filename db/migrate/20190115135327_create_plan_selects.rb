class CreatePlanSelects < ActiveRecord::Migration[5.2]
  def change
    create_table :plan_selects do |t|
      t.references :user, foreign_key: true
      t.references :plan, foreign_key: true

      t.timestamps
    end
  end
end
